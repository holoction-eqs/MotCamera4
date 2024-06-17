.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzok;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final configSwitchPreferenceCompat(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 3

    if-eqz p0, :cond_18

    if-nez p5, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p5

    const-string v0, "getCurrentCameraType()"

    invoke-static {p5, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-static {p6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiValuesAllowed(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Z

    move-result p5

    iget-boolean v0, v0, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eqz p5, :cond_10

    sget-object p5, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p6, p5}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    goto/16 :goto_3

    :cond_3
    sget-object p5, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p6, p5}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    goto/16 :goto_3

    :cond_4
    sget-object p5, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p6, p5}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartCompositionSupported()Z

    goto/16 :goto_3

    :cond_5
    sget-object p5, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p6, p5}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_6

    sget-object p5, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p5}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieSupported(Lcom/motorola/camera/settings/CameraType;)Z

    goto/16 :goto_3

    :cond_6
    sget-object p5, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p6, p5}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_7

    sget-object p5, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p5}, Lcom/motorola/camera/settings/SettingsHelper;->isAiImageStabilizationSupported(Lcom/motorola/camera/settings/CameraType;)Z

    goto/16 :goto_3

    :cond_7
    sget-object p5, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p6, p5}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    goto/16 :goto_3

    :cond_8
    sget-object p5, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_NOISE_CANCELLATION_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p6, p5}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartNoiseCancellationSupported()Z

    goto :goto_3

    :cond_9
    sget-object p5, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p6, p5}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingSupported()Z

    goto :goto_3

    :cond_a
    sget-object p5, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p6, p5}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    goto :goto_3

    :cond_b
    sget-object p5, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p6, p5}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_c

    sget-object p5, Lcom/motorola/camera/utility/lens/LensApiHelper;->instance$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-static {}, Lkotlin/UShort$Companion;->getInstance()Lcom/motorola/camera/utility/lens/LensApiHelper;

    move-result-object p5

    invoke-virtual {p5}, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable()Z

    goto :goto_3

    :cond_c
    sget-object p5, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p6, p5}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSATFallbackSupported()Z

    goto :goto_3

    :cond_d
    sget-object p5, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p6, p5}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_e

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result p5

    if-eqz p5, :cond_10

    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewOff()Z

    move-result p5

    goto :goto_3

    :cond_e
    sget-object p5, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p6, p5}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_f

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    goto :goto_3

    :cond_f
    sget-object p5, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p6, p5}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_10

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result p5

    if-eqz p5, :cond_10

    goto :goto_2

    :cond_10
    :goto_3
    invoke-static {p6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p5

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p6

    if-nez p6, :cond_11

    iput-boolean v1, p0, Landroidx/preference/Preference;->mPersistent:Z

    :cond_11
    iget-object p6, p5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "setting.value"

    invoke-static {p6, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p6, Ljava/lang/Boolean;

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    invoke-virtual {p0, p6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p5, p5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p5, Ljava/lang/Boolean;

    if-nez p5, :cond_12

    move p5, v1

    goto :goto_4

    :cond_12
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    :goto_4
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    iput-object p5, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz p1, :cond_13

    iget-object p5, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_13

    iput-object p1, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_13
    if-eqz p2, :cond_14

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_14
    if-eqz p3, :cond_18

    if-eqz p4, :cond_18

    iget-boolean p1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz p1, :cond_15

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_5

    :cond_15
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_5
    sget-object p2, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    iget-object p2, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_17

    const-string p5, "context"

    invoke-static {p2, p5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p5

    if-eqz p5, :cond_16

    const p5, 0x7f0603fb

    goto :goto_6

    :cond_16
    const p5, 0x7f0603ab

    :goto_6
    invoke-static {p2, p5}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_7

    :cond_17
    const/4 p1, 0x0

    :goto_7
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p3, p4, v1}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    iput-object p1, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    :cond_18
    return-void
.end method
