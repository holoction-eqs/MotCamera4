.class public final synthetic Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/work/WorkQuery$Builder;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/WorkQuery$Builder;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener$$ExternalSyntheticLambda0;->f$0:Landroidx/work/WorkQuery$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener$$ExternalSyntheticLambda0;->$r8$classId:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener$$ExternalSyntheticLambda0;->f$0:Landroidx/work/WorkQuery$Builder;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AWB_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AF_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->LENS_SHADING_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    return-object v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AWB_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AF_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->LENS_SHADING_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/motorola/camera/instrumentreport/CalibrationData;->groupDBquery(Ljava/lang/Boolean;)Landroid/database/Cursor;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/motorola/camera/instrumentreport/CalibrationData;->mBuildUpdated:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedBack:Z

    sput-boolean v0, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedFront:Z

    sput-boolean p0, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    :cond_3
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
