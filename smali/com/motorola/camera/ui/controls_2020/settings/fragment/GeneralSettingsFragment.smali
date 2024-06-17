.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;
.super Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;",
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;",
        "<init>",
        "()V",
        "Companion",
        "MotCamera4-v9.1.0.91_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public resetDialog:Landroidx/appcompat/app/AlertDialog;

.field public final resetDialogClickListener:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f150007

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;-><init>(I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetDialogClickListener:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static resetToDefaultValue(Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 1

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/settings/Setting;->clearCachedValue()V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static setDefaultSize(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/PreviewSize$AspectRatio;)V
    .locals 9

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    instance-of v2, v1, Landroid/util/Size;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.collections.List<android.util.Size>"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/util/Size;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupported()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, p0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {v7, v8, p1}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(IILcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getBackMainCamera()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaBinningSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/ArraysUtilJVM;->getArea(Landroid/util/Size;)I

    move-result v7

    invoke-static {v6}, Lkotlin/collections/ArraysUtilJVM;->getArea(Landroid/util/Size;)I

    move-result v6

    if-lt v7, v6, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v7, v6, p1}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(IILcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v6

    :goto_1
    if-eqz v6, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_6

    :cond_6
    move-object v1, p1

    check-cast v1, Landroid/util/Size;

    invoke-static {v1}, Lkotlin/collections/ArraysUtilJVM;->getArea(Landroid/util/Size;)I

    move-result v1

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/util/Size;

    invoke-static {v5}, Lkotlin/collections/ArraysUtilJVM;->getArea(Landroid/util/Size;)I

    move-result v5

    if-ge v1, v5, :cond_8

    move-object p1, v3

    move v1, v5

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_6

    :cond_9
    instance-of v1, v1, Lcom/motorola/camera/VideoFormat;

    if-eqz v1, :cond_11

    sget-object v1, Lcom/motorola/camera/VideoFormat;->FHD:Landroid/util/Size;

    invoke-static {v1}, Lkotlin/collections/ArraysUtilJVM;->getArea(Landroid/util/Size;)I

    move-result v1

    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v2

    const-string v5, "null cannot be cast to non-null type kotlin.collections.List<com.motorola.camera.VideoFormat>"

    invoke-static {v2, v5}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/motorola/camera/VideoFormat;

    iget-object v8, v7, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v8}, Lkotlin/collections/ArraysUtilJVM;->getArea(Landroid/util/Size;)I

    move-result v8

    if-gt v8, v1, :cond_b

    iget-object v7, v7, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-static {v8, v7, p1}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(IILcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v7

    if-eqz v7, :cond_b

    move v7, v3

    goto :goto_3

    :cond_b
    move v7, v4

    :goto_3
    if-eqz v7, :cond_a

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_5

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    :goto_4
    move-object p1, v1

    goto :goto_6

    :cond_e
    move-object v2, v1

    check-cast v2, Lcom/motorola/camera/VideoFormat;

    iget-object v2, v2, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/motorola/camera/VideoFormat;

    iget-object v5, v5, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v2, v5}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-lez v6, :cond_10

    move-object v1, v3

    move-object v2, v5

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_4

    :cond_11
    :goto_5
    const/4 p1, 0x0

    :goto_6
    if-nez p1, :cond_12

    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :cond_12
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/settings/Setting;->clearCachedValue()V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->showResetDialog(Landroid/content/Context;)V

    :cond_1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 27

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    const v1, 0x7f12046c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    const v2, 0x7f120445

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    if-eqz v1, :cond_0

    iget-object v3, v0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object v3, v3, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    if-eqz v2, :cond_2

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    :goto_0
    iget-object v1, v0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object v1, v1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    const/4 v1, 0x6

    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v2

    array-length v3, v2

    move v5, v4

    :goto_1
    const/4 v6, 0x1

    const v7, 0x7f12042f

    const v8, 0x7f120433

    const-string v9, "getCurrentCameraType()"

    if-ge v5, v3, :cond_3a

    aget v1, v2, v5

    invoke-static {v1}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getKey(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_39

    sget-object v10, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->Companion:Lkotlin/UInt$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->INSTANT_REVIEW:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v12, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->CAMERA_CARTOON:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v13, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->SHOT_OPTIMIZATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v14, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->HDR:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v15, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUTO_MACRO:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v16, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->LOW_LIGHT_SELFIE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v17, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AI_IMAGE_STABILIZATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v18, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->GOOGLE_LENS:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v19, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUTO_FOCUS_TRACING:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v20, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUDIO_ZOOM:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v21, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUDIO_NOISE_CANCELLATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v22, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->EFFICIENT_VIDEO:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v23, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->FRONT_MIRROR:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v24, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->SHUTTER_SOUND:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v25, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->KEEP_LAST_MODE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v26, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->LOCATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    filled-new-array/range {v11 .. v26}, [Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/JvmClassMappingKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    iget v12, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->key:I

    invoke-virtual {v0, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v12

    check-cast v12, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v12, :cond_3

    iget-object v13, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->cameraType:Lcom/motorola/camera/settings/CameraType;

    if-nez v13, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v13

    invoke-static {v13, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget-object v14, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v15

    invoke-static {v15, v13}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiValuesAllowed(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v13

    if-eqz v13, :cond_14

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    move-result v13

    goto/16 :goto_4

    :cond_5
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    move-result v13

    goto/16 :goto_4

    :cond_6
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartCompositionSupported()Z

    move-result v13

    goto/16 :goto_4

    :cond_7
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    sget-object v13, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v13

    goto/16 :goto_4

    :cond_8
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    sget-object v13, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isAiImageStabilizationSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v13

    goto/16 :goto_4

    :cond_9
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result v13

    goto/16 :goto_4

    :cond_a
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_NOISE_CANCELLATION_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartNoiseCancellationSupported()Z

    move-result v13

    goto/16 :goto_4

    :cond_b
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingSupported()Z

    move-result v13

    goto/16 :goto_4

    :cond_c
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result v13

    goto :goto_4

    :cond_d
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    sget-object v13, Lcom/motorola/camera/utility/lens/LensApiHelper;->instance$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-static {}, Lkotlin/UShort$Companion;->getInstance()Lcom/motorola/camera/utility/lens/LensApiHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable()Z

    move-result v13

    goto :goto_4

    :cond_e
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSATFallbackSupported()Z

    move-result v13

    goto :goto_4

    :cond_f
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewOff()Z

    move-result v13

    if-nez v13, :cond_12

    goto :goto_3

    :cond_10
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v13

    goto :goto_4

    :cond_11
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewOff()Z

    move-result v13

    if-nez v13, :cond_12

    goto :goto_3

    :cond_12
    move v13, v4

    goto :goto_4

    :cond_13
    :goto_3
    move v13, v6

    :goto_4
    if-eqz v13, :cond_14

    move v13, v6

    goto :goto_5

    :cond_14
    move v13, v4

    :goto_5
    if-nez v13, :cond_3

    sget-object v13, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->GOOGLE_LENS:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    if-ne v11, v13, :cond_15

    sget-object v11, Lcom/motorola/camera/utility/lens/LensApiHelper;->instance$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-static {}, Lkotlin/UShort$Companion;->getInstance()Lcom/motorola/camera/utility/lens/LensApiHelper;

    move-result-object v11

    new-instance v13, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v13, v11, v0, v12, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/utility/lens/LensApiHelper;Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Landroidx/preference/SwitchPreferenceCompat;Landroidx/preference/PreferenceCategory;)V

    invoke-virtual {v11, v13}, Lcom/motorola/camera/utility/lens/LensApiHelper;->checkGoogleLensAvailability(Lcom/motorola/camera/utility/lens/LensApiHelper$StatusCheckCallback;)V

    goto/16 :goto_2

    :cond_15
    invoke-virtual {v0, v12, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    goto/16 :goto_2

    :cond_16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v10

    if-nez v10, :cond_17

    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v10, v10, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v10, :cond_18

    :cond_17
    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    invoke-virtual {v0, v8, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkSupported()Z

    move-result v7

    if-nez v7, :cond_19

    const v7, 0x7f120461

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_19
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v7

    if-nez v7, :cond_1a

    const v7, 0x7f12042a

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_1a
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v7, v6}, Lcom/motorola/camera/QuickLaunch;->supports(Lcom/motorola/camera/CameraApp;I)Z

    move-result v7

    const/4 v8, 0x2

    if-nez v7, :cond_1b

    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v7, v8}, Lcom/motorola/camera/QuickLaunch;->supports(Lcom/motorola/camera/CameraApp;I)Z

    move-result v7

    if-nez v7, :cond_1b

    const v7, 0x7f12045a

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_1b
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v7, v7, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v7, :cond_1c

    sget-object v7, Lcom/motorola/camera/settings/CustomKeyHelper;->mKeyExistsMap:Ljava/util/HashMap;

    goto :goto_6

    :cond_1c
    const v7, 0x7f120475

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :goto_6
    sget-object v7, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->BUILD_CHARACTERISTICS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v7}, Ljms/IJobMgrService$_Parcel;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1e

    const-string v10, "nosdcard"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1e

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_7

    :cond_1d
    move v7, v4

    goto :goto_8

    :cond_1e
    :goto_7
    move v7, v6

    :goto_8
    if-nez v7, :cond_1f

    const v7, 0x7f12046a

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_1f
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    move-result-object v7

    array-length v8, v7

    move v10, v4

    :goto_9
    if-ge v10, v8, :cond_33

    aget-object v11, v7, v10

    iget v12, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->key:I

    invoke-virtual {v0, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/IntSettingListPreference;

    iget-object v13, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->getCameraType:Lkotlin/jvm/functions/Function0;

    if-eqz v13, :cond_20

    invoke-interface {v13}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/settings/CameraType;

    if-nez v13, :cond_21

    :cond_20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v13

    invoke-static {v13, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_21
    iget-object v11, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v14

    invoke-static {v14, v13}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiValuesAllowed(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v13

    if-eqz v13, :cond_31

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    move-result v11

    goto/16 :goto_b

    :cond_22
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    move-result v11

    goto/16 :goto_b

    :cond_23
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_24

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartCompositionSupported()Z

    move-result v11

    goto/16 :goto_b

    :cond_24
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    sget-object v11, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v11

    goto/16 :goto_b

    :cond_25
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    sget-object v11, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsHelper;->isAiImageStabilizationSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v11

    goto/16 :goto_b

    :cond_26
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_27

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result v11

    goto/16 :goto_b

    :cond_27
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_NOISE_CANCELLATION_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_28

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartNoiseCancellationSupported()Z

    move-result v11

    goto/16 :goto_b

    :cond_28
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingSupported()Z

    move-result v11

    goto/16 :goto_b

    :cond_29
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result v11

    goto :goto_b

    :cond_2a
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    sget-object v11, Lcom/motorola/camera/utility/lens/LensApiHelper;->instance$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-static {}, Lkotlin/UShort$Companion;->getInstance()Lcom/motorola/camera/utility/lens/LensApiHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable()Z

    move-result v11

    goto :goto_b

    :cond_2b
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSATFallbackSupported()Z

    move-result v11

    goto :goto_b

    :cond_2c
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2d

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v11

    if-eqz v11, :cond_2f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewOff()Z

    move-result v11

    if-nez v11, :cond_2f

    goto :goto_a

    :cond_2d
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2e

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v11

    goto :goto_b

    :cond_2e
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_30

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v11

    if-eqz v11, :cond_2f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewOff()Z

    move-result v11

    if-nez v11, :cond_2f

    goto :goto_a

    :cond_2f
    move v11, v4

    goto :goto_b

    :cond_30
    :goto_a
    move v11, v6

    :goto_b
    if-eqz v11, :cond_31

    move v11, v6

    goto :goto_c

    :cond_31
    move v11, v4

    :goto_c
    if-nez v11, :cond_32

    invoke-virtual {v0, v12, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_32
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_9

    :cond_33
    sget-object v7, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v8, Lcom/motorola/camera/AppFeatures$Feature;->SEC_PHOTO_SIZE_WIDTH:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_34

    move v7, v6

    goto :goto_d

    :cond_34
    move v7, v4

    :goto_d
    if-nez v7, :cond_35

    sget-object v7, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaUpscaleOnly(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v7

    if-nez v7, :cond_35

    move v7, v6

    goto :goto_e

    :cond_35
    move v7, v4

    :goto_e
    if-eqz v7, :cond_36

    const v7, 0x7f12045d

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_36
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    sget-object v9, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v7, v9}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x4

    if-gt v7, v8, :cond_37

    move v7, v6

    goto :goto_f

    :cond_37
    move v7, v4

    :goto_f
    if-eqz v7, :cond_38

    const v7, 0x7f12045b

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_38
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    if-ge v7, v6, :cond_39

    iget-object v6, v0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object v6, v6, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v6, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_39
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x6

    goto/16 :goto_1

    :cond_3a
    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v1

    array-length v2, v1

    move v3, v4

    :goto_10
    const/4 v5, 0x0

    if-ge v3, v2, :cond_41

    aget v10, v1, v3

    invoke-static {v10}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getKey(I)I

    move-result v10

    invoke-virtual {v0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v10

    check-cast v10, Landroidx/preference/PreferenceCategory;

    if-eqz v10, :cond_40

    new-instance v11, Landroidx/core/view/ViewGroupKt$children$1;

    invoke-direct {v11, v10, v6}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v11}, Landroidx/core/view/ViewGroupKt$children$1;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v4

    :goto_11
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_40

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v14, v12, 0x1

    if-ltz v12, :cond_3f

    check-cast v13, Landroidx/preference/Preference;

    const-string v15, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.preferences.generic.RoundedPreferenceDelegate"

    invoke-static {v13, v15}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceDelegate;

    new-instance v15, Landroidx/core/view/ViewGroupKt$children$1;

    invoke-direct {v15, v10, v6}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v15}, Lkotlin/sequences/SequencesKt;->count(Lkotlin/sequences/Sequence;)I

    move-result v15

    if-le v15, v6, :cond_3d

    if-nez v12, :cond_3b

    const v12, 0x7f08033d

    goto :goto_12

    :cond_3b
    new-instance v15, Landroidx/core/view/ViewGroupKt$children$1;

    invoke-direct {v15, v10, v6}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v15}, Lkotlin/sequences/SequencesKt;->count(Lkotlin/sequences/Sequence;)I

    move-result v15

    sub-int/2addr v15, v6

    if-ne v12, v15, :cond_3c

    const v12, 0x7f08033e

    goto :goto_12

    :cond_3c
    const v12, 0x7f08033f

    goto :goto_12

    :cond_3d
    new-instance v12, Landroidx/core/view/ViewGroupKt$children$1;

    invoke-direct {v12, v10, v6}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v12}, Lkotlin/sequences/SequencesKt;->count(Lkotlin/sequences/Sequence;)I

    move-result v12

    if-ne v12, v6, :cond_3e

    const v12, 0x7f080340

    :goto_12
    invoke-interface {v13, v12}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceDelegate;->setBackgroundDrawable(I)V

    :cond_3e
    move v12, v14

    goto :goto_11

    :cond_3f
    invoke-static {}, Lkotlin/jvm/JvmClassMappingKt;->throwIndexOverflow()V

    throw v5

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_41
    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_42

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v4}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;I)V

    iput-object v2, v1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    :cond_42
    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_43

    new-instance v2, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda1;

    const/16 v3, 0x10

    invoke-direct {v2, v3, v0, v1}, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    :cond_43
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ON_LAUNCH_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/launch/OnLaunchAction;

    sget-object v2, Lcom/motorola/camera/launch/OnLaunchAction;->OPEN_LOCATION_SETTINGS:Lcom/motorola/camera/launch/OnLaunchAction;

    if-ne v1, v2, :cond_44

    const v1, 0x7f120467

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;

    if-eqz v1, :cond_44

    iput-boolean v6, v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;->shouldAnimate:Z

    :cond_44
    const v1, 0x7f120449

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_45

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v6}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;I)V

    iput-object v2, v1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    :cond_45
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    move-result-object v1

    array-length v2, v1

    move v3, v4

    :goto_13
    const/16 v7, 0xa

    if-ge v3, v2, :cond_4c

    aget-object v8, v1, v3

    iget v10, v8, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->key:I

    invoke-virtual {v0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v10

    check-cast v10, Landroidx/preference/ListPreference;

    iget-object v11, v8, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->getCameraType:Lkotlin/jvm/functions/Function0;

    if-eqz v11, :cond_46

    invoke-interface {v11}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/settings/CameraType;

    goto :goto_14

    :cond_46
    move-object v11, v5

    :goto_14
    if-eqz v10, :cond_4b

    if-nez v11, :cond_47

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v11

    invoke-static {v11, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_47
    iget-object v8, v8, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v8, v11}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/motorola/camera/settings/Setting;->getSummaryStringsForValues(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    const v14, 0x7f12044f

    iget-object v15, v10, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    if-nez v13, :cond_4a

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_48

    goto :goto_15

    :cond_48
    new-array v13, v4, [Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-interface {v12}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v13, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;

    invoke-direct {v13, v7}, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v11, v13}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    const-string v11, "values.stream().map { it\u2026lect(Collectors.toList())"

    invoke-static {v7, v11}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/util/Collection;

    new-array v11, v4, [Ljava/lang/String;

    invoke-interface {v7, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    iput-object v7, v10, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v6, :cond_49

    iget-object v7, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_16

    :cond_49
    invoke-virtual {v15, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    goto :goto_16

    :cond_4a
    :goto_15
    invoke-virtual {v15, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4b
    :goto_16
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    :cond_4c
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    move-result-object v1

    array-length v2, v1

    move v3, v4

    :goto_17
    if-ge v3, v2, :cond_65

    aget-object v5, v1, v3

    iget v8, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->key:I

    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;

    iget-object v10, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->getCameraType:Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/settings/CameraType;

    if-eqz v8, :cond_64

    if-nez v10, :cond_4d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4d
    iget-object v5, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v11

    const-string v12, "null cannot be cast to non-null type com.motorola.camera.settings.Setting<kotlin.Any>"

    invoke-static {v11, v12}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v12

    invoke-static {v12, v10}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiValuesAllowed(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v13

    iget-boolean v12, v12, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    xor-int/2addr v12, v6

    if-eqz v12, :cond_4e

    if-eqz v13, :cond_4e

    move v12, v6

    goto :goto_18

    :cond_4e
    move v12, v4

    :goto_18
    if-eqz v13, :cond_5c

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    goto/16 :goto_1a

    :cond_4f
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_50

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    goto/16 :goto_1a

    :cond_50
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_51

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartCompositionSupported()Z

    goto/16 :goto_1a

    :cond_51
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_52

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieSupported(Lcom/motorola/camera/settings/CameraType;)Z

    goto/16 :goto_1a

    :cond_52
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_53

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isAiImageStabilizationSupported(Lcom/motorola/camera/settings/CameraType;)Z

    goto/16 :goto_1a

    :cond_53
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_54

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    goto/16 :goto_1a

    :cond_54
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_NOISE_CANCELLATION_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_55

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartNoiseCancellationSupported()Z

    goto :goto_1a

    :cond_55
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_56

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingSupported()Z

    goto :goto_1a

    :cond_56
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_57

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    goto :goto_1a

    :cond_57
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_58

    sget-object v5, Lcom/motorola/camera/utility/lens/LensApiHelper;->instance$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-static {}, Lkotlin/UShort$Companion;->getInstance()Lcom/motorola/camera/utility/lens/LensApiHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable()Z

    goto :goto_1a

    :cond_58
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_59

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSATFallbackSupported()Z

    goto :goto_1a

    :cond_59
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5a

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v5

    if-eqz v5, :cond_5c

    goto :goto_19

    :cond_5a
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5b

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    goto :goto_1a

    :cond_5b
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v5

    if-eqz v5, :cond_5c

    :goto_19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewOff()Z

    :cond_5c
    :goto_1a
    invoke-static {v11, v10}, Lcom/motorola/camera/settings/SettingsHelper;->getPersistPictureSize(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    sget v13, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;->$r8$clinit:I

    invoke-static {v5}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Landroid/util/Size;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object v5

    const-string v13, "getSupportedAspectRatio(loadValue)"

    invoke-static {v5, v13}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10, v11}, Lkotlin/UShort$Companion;->getResolutions(Lcom/motorola/camera/PreviewSize$AspectRatio;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    iget-boolean v14, v13, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isRecommended:Z

    iget-object v13, v13, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->string:Ljava/lang/String;

    if-eqz v14, :cond_5d

    sget-object v14, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v15, 0x7f12045f

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "getInstance().getString(\u2026otos_resolutions_summary)"

    invoke-static {v14, v15}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v15, "format(format, *args)"

    invoke-static {v13, v6, v14, v15}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_5d
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_5e
    new-array v11, v4, [Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    iput-object v10, v8, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    iget-object v13, v13, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_5f
    new-array v11, v4, [Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    iput-object v10, v8, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, v6, :cond_60

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    goto :goto_1e

    :cond_60
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_61
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_62

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    iget-boolean v13, v13, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isSelected:Z

    if-eqz v13, :cond_61

    goto :goto_1d

    :cond_62
    const/4 v11, 0x0

    :goto_1d
    move-object v10, v11

    check-cast v10, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    :goto_1e
    iput-object v5, v8, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;->resolutionList:Ljava/util/ArrayList;

    if-eqz v12, :cond_63

    iget-object v5, v8, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v5, v5

    if-le v5, v6, :cond_63

    move v5, v6

    goto :goto_1f

    :cond_63
    move v5, v4

    :goto_1f
    iput-boolean v5, v8, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    if-eqz v10, :cond_64

    iget-object v5, v10, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, v10, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->string:Ljava/lang/String;

    invoke-virtual {v8, v5}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_17

    :cond_65
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

    move-result-object v1

    array-length v2, v1

    move v3, v4

    :goto_20
    if-ge v3, v2, :cond_7a

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, 0x7f120475

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Landroidx/preference/SwitchPreferenceCompat;

    sget-object v8, Lcom/motorola/camera/utility/ForegroundRunner$handler$2;->INSTANCE$12:Lcom/motorola/camera/utility/ForegroundRunner$handler$2;

    invoke-virtual {v8}, Lcom/motorola/camera/utility/ForegroundRunner$handler$2;->invoke$2()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v7, :cond_79

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiValuesAllowed(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v10

    iget-boolean v11, v11, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    xor-int/2addr v11, v6

    if-eqz v11, :cond_66

    if-eqz v10, :cond_66

    move v11, v6

    goto :goto_21

    :cond_66
    move v11, v4

    :goto_21
    if-eqz v10, :cond_74

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v10}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_67

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    goto/16 :goto_23

    :cond_67
    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v10}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_68

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    goto/16 :goto_23

    :cond_68
    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v10}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_69

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartCompositionSupported()Z

    goto/16 :goto_23

    :cond_69
    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v10}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6a

    sget-object v10, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieSupported(Lcom/motorola/camera/settings/CameraType;)Z

    goto/16 :goto_23

    :cond_6a
    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v10}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6b

    sget-object v10, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isAiImageStabilizationSupported(Lcom/motorola/camera/settings/CameraType;)Z

    goto/16 :goto_23

    :cond_6b
    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v10}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    goto/16 :goto_23

    :cond_6c
    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_NOISE_CANCELLATION_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v10}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartNoiseCancellationSupported()Z

    goto :goto_23

    :cond_6d
    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v10}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingSupported()Z

    goto :goto_23

    :cond_6e
    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v10}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    goto :goto_23

    :cond_6f
    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v10}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_70

    sget-object v10, Lcom/motorola/camera/utility/lens/LensApiHelper;->instance$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-static {}, Lkotlin/UShort$Companion;->getInstance()Lcom/motorola/camera/utility/lens/LensApiHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable()Z

    goto :goto_23

    :cond_70
    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v10}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_71

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSATFallbackSupported()Z

    goto :goto_23

    :cond_71
    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v10}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_72

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v10

    if-eqz v10, :cond_74

    goto :goto_22

    :cond_72
    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v10}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_73

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    goto :goto_23

    :cond_73
    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v10}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_74

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v10

    if-eqz v10, :cond_74

    :goto_22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewOff()Z

    :cond_74
    :goto_23
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    if-eqz v8, :cond_75

    iget-object v10, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    goto :goto_24

    :cond_75
    const/4 v10, 0x0

    :goto_24
    const-string v12, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v10, v12}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v7, v10}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {v7, v11}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    iput-object v8, v7, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    iget-object v8, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->iconCheckedId:Ljava/lang/Integer;

    if-eqz v8, :cond_79

    iget-object v5, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->iconUncheckedId:Ljava/lang/Integer;

    if-eqz v5, :cond_79

    iget-boolean v10, v7, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v10, :cond_76

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_25

    :cond_76
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_25
    sget-object v11, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    iget-object v11, v7, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v11, v10}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_78

    const-string v12, "context"

    invoke-static {v11, v12}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_77

    const v12, 0x7f0603fb

    goto :goto_26

    :cond_77
    const v12, 0x7f0603ab

    :goto_26
    invoke-static {v11, v12}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_27

    :cond_78
    const/4 v10, 0x0

    :goto_27
    invoke-virtual {v7, v10}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController$$ExternalSyntheticLambda0;

    invoke-direct {v10, v7, v8, v5, v6}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    iput-object v10, v7, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    :cond_79
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_20

    :cond_7a
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-result-object v1

    array-length v2, v1

    :goto_28
    if-ge v4, v2, :cond_7d

    aget-object v3, v1, v4

    iget v5, v3, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->key:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/preference/SwitchPreferenceCompat;

    iget-object v5, v3, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->title:Ljava/lang/Integer;

    if-eqz v5, :cond_7b

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_29

    :cond_7b
    const/4 v5, 0x0

    :goto_29
    move-object v7, v5

    iget-object v5, v3, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->summary:Ljava/lang/Integer;

    if-eqz v5, :cond_7c

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2a

    :cond_7c
    const/4 v5, 0x0

    :goto_2a
    move-object v8, v5

    iget-object v9, v3, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->iconCheckedId:Ljava/lang/Integer;

    iget-object v10, v3, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->iconUncheckedId:Ljava/lang/Integer;

    iget-object v11, v3, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->cameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object v12, v3, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v6 .. v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzok;->configSwitchPreferenceCompat(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_7d
    return-void
.end method

.method public final onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.activity.SettingsActivity"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    const v0, 0x7f0a0217

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a021a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f120122

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public final showResetDialog(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120431

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f120430

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v1, 0x7f12009b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetDialogClickListener:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda0;)V

    const v1, 0x7f120432

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda0;)V

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f080341

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method
