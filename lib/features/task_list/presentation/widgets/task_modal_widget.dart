import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/constants/app_strings.dart';
import '../entities/task_list_page_ui_model.dart';
import '../entities/task_modal_ui_model.dart';

class TaskModalWidget extends StatelessWidget {
  final TaskModalUiModel uiModel;
  final Function(TaskItemUiModel task) onSavePressed;
  final Function(TaskItemUiModel? task) onDeletePressed;

  const TaskModalWidget(
      {required this.uiModel, required this.onSavePressed, required this.onDeletePressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 7, 16, 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildHeaderLabel(),
          _buildFormContainer(),
        ],
      ),
    );
  }

  _buildHeaderLabel() {
    return Text(uiModel.modalHeaderLabel, style: const TextStyle(fontSize: 20));
  }

  _buildFormContainer() {
    var _form = GlobalKey<FormState>();
    var _titleEditBox = TextEditingController()..text = uiModel.task?.title ?? '';
    var _descriptionEditBox = TextEditingController()..text = uiModel.task?.description ?? '';
    TaskStatus? _dropdownButtonValue = uiModel.task?.status ?? TaskStatus.toDo;
    return Form(
      key: _form,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: TextFormField(
              controller: _titleEditBox,
              decoration: InputDecoration(
                labelText: uiModel.titleEditBoxLabel,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
              ),
              validator: (value) => (value ?? '').isEmpty ? 'Please add a title.' : null,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 16),
              child: TextFormField(
                minLines: 2,
                controller: _descriptionEditBox,
                decoration: InputDecoration(
                  labelText: uiModel.descriptionEditBoxLabel,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                ),
                maxLines: null,
                keyboardType: TextInputType.multiline,
              )),
          Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DropdownButtonFormField<TaskStatus>(
                value: _dropdownButtonValue,
                decoration: InputDecoration(
                  labelText: 'Status',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                items: TaskStatuses.map.entries.map((entry) {
                  return DropdownMenuItem<TaskStatus>(
                    value: entry.key,
                    child: Text(entry.value),
                  );
                }).toList(),
                validator: (value) => (value == null) ? 'Please set a status.' : null,
                onChanged: (TaskStatus? selectedStatus) {
                  _dropdownButtonValue = selectedStatus;
                },
              )),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(children: [
              Expanded(
                child: ElevatedButton(
                  child: Text(
                    uiModel.saveButtonLabel,
                    style: const TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                  ),
                  onPressed: () {
                    var _formCurrentState = _form.currentState;
                    if (_formCurrentState != null && _formCurrentState.validate()) {
                      onSavePressed(TaskItemUiModel(
                          id: const Uuid().v4(),
                          title: _titleEditBox.text,
                          description: _descriptionEditBox.text,
                          status: _dropdownButtonValue ?? TaskStatus.toDo));
                    }
                  },
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: ElevatedButton(
                  child: Text(
                    uiModel.deleteButtonLabel,
                    style: const TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                  ),
                  onPressed: () => onDeletePressed(uiModel.task),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
