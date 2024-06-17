.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_COLD_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->HAL_SET_REPEATING_TO_FIRST_FRAME:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda6;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Long;

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    invoke-virtual {v3, v2, p0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)J

    invoke-virtual {v3, v1, p0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)J

    invoke-virtual {v3, v0}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, p0}, Lcom/motorola/camera/CameraKpi;->endKpiLogs(Ljava/lang/Long;)V

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->turnOnSmileCaptureDelay()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->turnOnGestureCaptureDelay()V

    return-void

    :goto_0
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    invoke-virtual {v3, v2, p0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)J

    invoke-virtual {v3, v1, p0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)J

    invoke-virtual {v3, v0}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, p0}, Lcom/motorola/camera/CameraKpi;->endKpiLogs(Ljava/lang/Long;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
