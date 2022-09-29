// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs,  constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String UserdataValueKey = 'userdata';
const String PasswordValueKey = 'password';

final Map<String, TextEditingController> _SignInTextEditingControllers = {};

final Map<String, FocusNode> _SignInFocusNodes = {};

final Map<String, String? Function(String?)?> _SignInTextValidations = {
  UserdataValueKey: null,
  PasswordValueKey: null,
};

mixin $SignIn on StatelessWidget {
  TextEditingController get userdataController =>
      _getFormTextEditingController(UserdataValueKey);
  TextEditingController get passwordController =>
      _getFormTextEditingController(PasswordValueKey);
  FocusNode get userdataFocusNode => _getFormFocusNode(UserdataValueKey);
  FocusNode get passwordFocusNode => _getFormFocusNode(PasswordValueKey);

  TextEditingController _getFormTextEditingController(String key,
      {String? initialValue}) {
    if (_SignInTextEditingControllers.containsKey(key)) {
      return _SignInTextEditingControllers[key]!;
    }
    _SignInTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _SignInTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_SignInFocusNodes.containsKey(key)) {
      return _SignInFocusNodes[key]!;
    }
    _SignInFocusNodes[key] = FocusNode();
    return _SignInFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    userdataController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
  }

  final bool _autoTextFieldValidation = true;
  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          UserdataValueKey: userdataController.text,
          PasswordValueKey: passwordController.text,
        }),
    );
    if (_autoTextFieldValidation || forceValidate) {
      _updateValidationData(model);
    }
  }

  /// Updates the fieldsValidationMessages on the FormViewModel
  void _updateValidationData(FormViewModel model) =>
      model.setValidationMessages({
        UserdataValueKey: _getValidationMessage(UserdataValueKey),
        PasswordValueKey: _getValidationMessage(PasswordValueKey),
      });

  /// Returns the validation message for the given key
  String? _getValidationMessage(String key) {
    final validatorForKey = _SignInTextValidations[key];
    if (validatorForKey == null) return null;
    String? validationMessageForKey =
        validatorForKey(_SignInTextEditingControllers[key]!.text);
    return validationMessageForKey;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _SignInTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _SignInFocusNodes.values) {
      focusNode.dispose();
    }

    _SignInTextEditingControllers.clear();
    _SignInFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get userdataValue => this.formValueMap[UserdataValueKey] as String?;
  String? get passwordValue => this.formValueMap[PasswordValueKey] as String?;

  bool get hasUserdata => this.formValueMap.containsKey(UserdataValueKey);
  bool get hasPassword => this.formValueMap.containsKey(PasswordValueKey);

  bool get hasUserdataValidationMessage =>
      this.fieldsValidationMessages[UserdataValueKey]?.isNotEmpty ?? false;
  bool get hasPasswordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey]?.isNotEmpty ?? false;

  String? get userdataValidationMessage =>
      this.fieldsValidationMessages[UserdataValueKey];
  String? get passwordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey];
}

extension Methods on FormViewModel {
  setUserdataValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[UserdataValueKey] = validationMessage;
  setPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PasswordValueKey] = validationMessage;
}
