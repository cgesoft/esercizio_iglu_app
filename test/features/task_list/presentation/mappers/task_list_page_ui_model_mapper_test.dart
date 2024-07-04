import 'package:esercizio_iglu_app/features/task_list/presentation/mappers/task_list_page_ui_model_mapper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late TaskListPageUiModelMapper _mapper;

  setUp(() {
    _mapper = TaskListPageUiModelMapper();
  });

  tearDown(() {});

  setUpAll(() {});

  group('TaskListPageUiModelMapper test', () {
    test(
        'WHEN mapper is called '
        'THEN should map TaskListPageUiModel correctly ', () {
      var uiModel = _mapper.call();
      expect(uiModel.logoPath, TaskListPageUiModelMapper.logoPath);
      expect(uiModel.titleLabel, TaskListPageUiModelMapper.titleLabel);
      expect(uiModel.descriptionLabel, TaskListPageUiModelMapper.descriptionLabel);
    });
  });
}
