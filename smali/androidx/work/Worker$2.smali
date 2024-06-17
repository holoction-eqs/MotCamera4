.class public final Landroidx/work/Worker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;

.field public val$future:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/work/Worker$2;->$r8$classId:I

    iput-object p2, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/instrumentreport/CalibrationData;Lcom/motorola/camera/photometadata/PhotoMetadata;)V
    .locals 1

    .line 2
    const/16 v0, 0x1a

    iput v0, p0, Landroidx/work/Worker$2;->$r8$classId:I

    invoke-direct {p0, v0, p1, p2}, Landroidx/work/Worker$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;)V
    .locals 1

    const/16 v0, 0x1b

    iput v0, p0, Landroidx/work/Worker$2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;I)V
    .locals 0

    .line 4
    const/16 p2, 0x1b

    iput p2, p0, Landroidx/work/Worker$2;->$r8$classId:I

    invoke-direct {p0, p1}, Landroidx/work/Worker$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/utility/WifiConnection;)V
    .locals 1

    const/16 v0, 0x1d

    iput v0, p0, Landroidx/work/Worker$2;->$r8$classId:I

    .line 5
    iput-object p1, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "wifi"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 8
    iput p3, p0, Landroidx/work/Worker$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x1c

    iput v0, p0, Landroidx/work/Worker$2;->$r8$classId:I

    const-string v0, "lock"

    .line 9
    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    return-void
.end method

.method private final run$com$google$android$gms$tasks$zzi()V
    .locals 3

    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzh;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/zzh;

    iget-object v1, v1, Lcom/google/android/gms/tasks/zzh;->zzc:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/tasks/OnCompleteListener;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/gms/tasks/OnCompleteListener;

    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    invoke-interface {v1, p0}, Lcom/google/android/gms/tasks/OnCompleteListener;->onComplete(Lcom/google/android/gms/tasks/zzw;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final run$com$google$android$gms$tasks$zzk()V
    .locals 3

    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzh;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/zzh;

    iget-object v1, v1, Lcom/google/android/gms/tasks/zzh;->zzc:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/tasks/OnFailureListener;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/gms/tasks/OnFailureListener;

    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    iget-object v2, p0, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzw;->zzf:Ljava/lang/Exception;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p0}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, p0}, Lcom/google/android/gms/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private final run$com$google$android$gms$tasks$zzm()V
    .locals 3

    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzh;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/zzh;

    iget-object v1, v1, Lcom/google/android/gms/tasks/zzh;->zzc:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/tasks/OnSuccessListener;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/gms/tasks/OnSuccessListener;

    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/google/android/gms/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private run$com$motorola$camera$instrumentreport$CalibrationData$UpdateDBRunnable()V
    .locals 7

    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/instrumentreport/CalibrationData;

    sget-boolean v1, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedBack:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->groupDBquery(Ljava/lang/Boolean;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-boolean v3, Lcom/motorola/camera/instrumentreport/CalibrationData;->mBuildUpdated:Z

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3}, Lcom/motorola/camera/instrumentreport/CalibrationData;->groupDBquery(Ljava/lang/Boolean;)Landroid/database/Cursor;

    goto :goto_2

    :cond_0
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-interface {v2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CalibrationBackCam"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-boolean v6, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "CalibrationFrontCam"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-eqz v5, :cond_2

    :goto_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto/16 :goto_c

    :catch_0
    move-exception v3

    goto :goto_3

    :catchall_1
    move-exception p0

    goto/16 :goto_c

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    :goto_3
    :try_start_2
    const-string v4, "CalibrationData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-boolean v3, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-eqz v3, :cond_4

    const-string v3, "CalibrationFrontCam"

    goto :goto_5

    :cond_4
    const-string v3, "CalibrationBackCam"

    :goto_5
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "RAW_SQL"

    const-string v6, "select keytag from events WHERE keytype = ? "

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "SELECTION_ARGS"

    invoke-virtual {v2, v5, v4}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-boolean v5, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    if-eqz v5, :cond_b

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v6, "com.motorola.camera_debug_report"

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "CALIBRATION_BUILD_STRING"

    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    const-string v0, "WHERE_CLAUSE"

    const-string v5, "keytype = ?"

    invoke-virtual {v2, v0, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WHERE_ARGS"

    invoke-virtual {v2, v0, v4}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->deleteData(Landroid/os/Bundle;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_SENSOR_NAME:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "SENSOR_NAME"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v4, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_MNF_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$mgetCalibrationString(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "MNF Calibration Status"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v4, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$mgetCalibrationString(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB Calibration Status"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v4, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AF_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$mgetCalibrationString(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AF Calibration Status"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v4, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_LS_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$mgetCalibrationString(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "LS Calibration Status"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v4, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_PDAF_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$mgetCalibrationString(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "PDAF Calibration Status"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v4, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_DUAL_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$mgetCalibrationString(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "DUAL Calibration Status"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_VERSION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CAL_VERSION"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_MANUFACTURE_ID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "MANUFACTURE_ID"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_MANUFACTURE_DATE:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "MANUFACTURE_DATE"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_MANUFACTURE_LINE:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "MANUFACTURE_LINE"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_SENSOR_SERIAL_NUM:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "SENSOR_SERIAL_NUM"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_MOT_PART_NUM:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "MOT_PART_NUM"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_LENS_ID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "LENS_ID"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_FACTORY_ID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "FACTORY_ID"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_IR_FILTER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "IR_FILTER"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CIE_LIL_X_SOURCE_1:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CIE_LIL_X_SOURCE_1"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CIE_LIL_Y_SOURCE_1:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CIE_LIL_Y_SOURCE_1"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CIE_BIG_Y_SOURCE_1:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CIE_BIG_Y_SOURCE_1"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_R:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_R"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_Gr:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_Gr"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_Gb:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_Gb"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_B:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_B"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_GOLDEN_R:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_GOLDEN_R"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_GOLDEN_Gr:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_GOLDEN_Gr"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_GOLDEN_Gb:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_GOLDEN_Gb"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_GOLDEN_B:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_GOLDEN_B"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_BLACK_LEVEL_R:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "BLACK_LEVEL_R"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_BLACK_LEVEL_Gr:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "BLACK_LEVEL_Gr"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_BLACK_LEVEL_Gb:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "BLACK_LEVEL_Gb"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_BLACK_LEVEL_B:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "BLACK_LEVEL_B"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_RG:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_RG"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_BG:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_BG"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_GRGB:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_GRGB"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_CAL_VER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AF_CAL_VER"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_HW_REV:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AF_HW_REV"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_INF_DAC:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AF_INF_DAC"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_MACRO_DAC:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AF_MACRO_DAC"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_INF_DAC_ORG:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AF_INF_DAC_ORG"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_MACRO_DAC_ORG:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AF_MACRO_DAC_ORG"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_ACTUATOR_ID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AF_ACTUATOR_ID"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v4, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CALSTATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_6

    move-object v2, v1

    goto :goto_6

    :cond_6
    :try_start_3
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sget-object v4, Lcom/motorola/camera/instrumentreport/CalibrationData;->mCalibrationStatusMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    const-string v2, "Parse Error"

    :goto_6
    const-string v4, "CALSTATUS"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v4, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_COLOR_ENABLED:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$mgetOldCalibrationString(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "COLOR_ENABLED"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v4, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_ROLLOFF_ENABLED:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$mgetOldCalibrationString(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ROLLOFF_ENABLED"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v4, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_AF_CAL_INFO_VALID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$mgetOldCalibrationString(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AF_CAL_INFO_VALID"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CHECK_CIE_OTP:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CHECK_CIE_OTP"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CHECK_AWB_OTP:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CHECK_AWB_OTP"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_BOKEH_BLUR_INTENSITY:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "BLUR_INTENSITY"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_BOKEH_ROI_LEFT:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ROI_LEFT"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_BOKEH_ROI_TOP:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ROI_TOP"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_BOKEH_ROI_WIDTH:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ROI_WIDTH"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v2, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_BOKEH_ROI_HEIGHT:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "ROI_HEIGHT"

    invoke-static {p0, v0, v3, v2, p0}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    const-string v2, "Exception getting DB connection:"

    monitor-enter p0

    :try_start_4
    iget-object v3, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v3, :cond_8

    :cond_7
    :try_start_5
    iget-object v3, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mInstrumentReportDBHelper:Lcom/motorola/camera/instrumentreport/InstrumentReportDBHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_8
    :try_start_6
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "events"

    invoke-virtual {v3, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    :try_start_7
    const-string v1, "InstrumentReportDBAccessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting DB connection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_8
    :try_start_8
    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_a

    :goto_9
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catch_4
    move-exception v0

    const-string v1, "InstrumentReportDBAccessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_a
    monitor-exit p0

    sget-boolean p0, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    sput-boolean v0, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedFront:Z

    goto :goto_b

    :cond_a
    sput-boolean v0, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedBack:Z

    goto :goto_b

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b
    :goto_b
    return-void

    :goto_c
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method private run$com$motorola$camera$ui$widgets$gl$textures$ModeMenuTexture$CheckStopMovingPress()V
    .locals 9

    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER_BG:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v3, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v3, Landroid/view/MotionEvent;

    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateSliderCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Landroid/view/MotionEvent;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v3, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v3, Landroid/view/MotionEvent;

    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    monitor-enter v1

    :try_start_0
    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-gez v5, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget-boolean v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isAnimation:Z

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)Z

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateCellPosition(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_4
    :goto_0
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mapPoint(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getSortRect()Lcom/google/common/base/Splitter$1;

    move-result-object v7

    iget v8, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v6}, Lcom/google/common/base/Splitter$1;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1, v4, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->moveMenuCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_7
    :goto_2
    monitor-exit v1

    :goto_3
    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast p0, Landroid/view/MotionEvent;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method private run$com$motorola$camera$utility$SynchronizedRunnable()V
    .locals 1

    iget-object v0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private run$com$motorola$camera$utility$WifiConnection$1()V
    .locals 5

    iget-object v0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    if-nez v0, :cond_1

    check-cast v2, Lcom/motorola/camera/utility/WifiConnection;

    iget v0, v2, Lcom/motorola/camera/utility/WifiConnection;->mAttempts:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/motorola/camera/utility/WifiConnection;->mAttempts:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_6

    iget-object v0, v2, Lcom/motorola/camera/utility/WifiConnection;->mEvent:Lcom/motorola/camera/fsm/ChangeEvent;

    iget-object v0, v0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_1
    check-cast v2, Lcom/motorola/camera/utility/WifiConnection;

    iget v0, v2, Lcom/motorola/camera/utility/WifiConnection;->mType:I

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    iget-object v0, v2, Lcom/motorola/camera/utility/WifiConnection;->mPassword:Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;-><init>()V

    iget-object v4, v2, Lcom/motorola/camera/utility/WifiConnection;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    iget-boolean v4, v2, Lcom/motorola/camera/utility/WifiConnection;->mIsHidden:Z

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setIsHiddenSsid(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    iget v4, v2, Lcom/motorola/camera/utility/WifiConnection;->mType:I

    invoke-static {v4}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v4

    if-eq v4, v1, :cond_4

    const/4 v1, 0x2

    if-eq v4, v1, :cond_4

    const/4 v1, 0x3

    if-eq v4, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, v2, Lcom/motorola/camera/utility/WifiConnection;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setWpa3Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    goto :goto_0

    :cond_4
    iget-object v1, v2, Lcom/motorola/camera/utility/WifiConnection;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setWpa2Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->build()Landroid/net/wifi/WifiNetworkSuggestion;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_5

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v3, 0x7f120079

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    iput v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-static {v1, p0, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->removeNetworkSuggestions(Ljava/util/List;)I

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_ADD_NETWORKS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android.provider.extra.WIFI_NETWORK_LIST"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/16 v1, 0xf

    const/4 v4, 0x0

    invoke-direct {v0, p0, v1, v4, v3}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    iget-object p0, v2, Lcom/motorola/camera/utility/WifiConnection;->mEventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, v0}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Landroidx/work/Worker$2;->$r8$classId:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Landroidx/work/Worker$2;->run$com$motorola$camera$utility$WifiConnection$1()V

    return-void

    :pswitch_0
    invoke-direct {p0}, Landroidx/work/Worker$2;->run$com$motorola$camera$utility$SynchronizedRunnable()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Landroidx/work/Worker$2;->run$com$motorola$camera$ui$widgets$gl$textures$ModeMenuTexture$CheckStopMovingPress()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Landroidx/work/Worker$2;->run$com$motorola$camera$instrumentreport$CalibrationData$UpdateDBRunnable()V

    return-void

    :pswitch_3
    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;

    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    sget v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->$r8$clinit:I

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->playShutterAndSendComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mIsComplete:Z

    if-nez v2, :cond_2

    sget v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->$r8$clinit:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  lock focus timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FocusExposureLockRunnable"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_TIMEOUT:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkLockComplete(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_5
    const-class v0, Ljava/lang/Throwable;

    iget-object v1, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/JsonConfig$CameraMapping;

    iget-object p0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    iget-object v5, v1, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    if-nez v5, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    invoke-static {v5}, Landroidx/room/util/DBUtil;->checkState(Z)V

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v1, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/motorola/camera/JsonConfig$CameraMapping;->zzc()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    iget-object v5, v1, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/motorola/camera/JsonConfig$CameraMapping;->zzc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_2
    const-string v4, "addSuppressed"

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v0, v3, v2

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_2
    throw p0

    :pswitch_6
    iget-object v0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/MapCollections;

    iget-object p0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, v0, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-ltz v1, :cond_4

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    invoke-static {v3}, Landroidx/room/util/DBUtil;->checkState(Z)V

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroidx/collection/MapCollections;->release()V

    iget-object v0, v0, Landroidx/collection/MapCollections;->mValues:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzow;->zza:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzqa;->zza:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/tasks/zzw;->zzb(Ljava/lang/Object;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Callable;

    iget-object p0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    :try_start_3
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    iget-object p0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzw;->zzb(Ljava/lang/Object;)V

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    const-string v2, "Internal error has occurred when executing ML Kit tasks"

    invoke-direct {v1, v2, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object p0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Exception;)V

    goto :goto_4

    :catch_2
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Exception;)V

    :goto_4
    return-void

    :pswitch_8
    iget-object v0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/ReferenceQueue;

    iget-object p0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    :catch_3
    :goto_5
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/common/sdkinternal/zzd;

    iget-object v2, v1, Lcom/google/mlkit/common/sdkinternal/zzd;->zza:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    iget-object v1, v1, Lcom/google/mlkit/common/sdkinternal/zzd;->zzb:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :cond_7
    return-void

    :pswitch_9
    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    :try_start_5
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/tasks/zzh;

    iget-object v1, v1, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    check-cast v1, Lkotlin/DeepRecursiveFunction;

    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Lkotlin/DeepRecursiveFunction;->then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/zzw;

    move-result-object p0
    :try_end_5
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->zza:Lcom/google/android/gms/tasks/zzt;

    check-cast v0, Lcom/google/android/gms/tasks/zzh;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tasks/zzw;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tasks/zzw;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    new-instance v2, Lcom/google/android/gms/tasks/zzh;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/tasks/zzh;-><init>(Lcom/google/android/gms/tasks/zzt;Lcom/google/android/gms/tasks/OnCanceledListener;)V

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzh;)V

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    goto :goto_7

    :catch_4
    move-exception p0

    check-cast v0, Lcom/google/android/gms/tasks/zzh;

    goto :goto_6

    :catch_5
    check-cast v0, Lcom/google/android/gms/tasks/zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzh;->onCanceled()V

    goto :goto_7

    :catch_6
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    check-cast v0, Lcom/google/android/gms/tasks/zzh;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    :cond_8
    :goto_6
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzh;->onFailure(Ljava/lang/Exception;)V

    :goto_7
    return-void

    :pswitch_a
    invoke-direct {p0}, Landroidx/work/Worker$2;->run$com$google$android$gms$tasks$zzm()V

    return-void

    :pswitch_b
    invoke-direct {p0}, Landroidx/work/Worker$2;->run$com$google$android$gms$tasks$zzk()V

    return-void

    :pswitch_c
    invoke-direct {p0}, Landroidx/work/Worker$2;->run$com$google$android$gms$tasks$zzi()V

    return-void

    :pswitch_d
    iget-object p0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/api/internal/zaae;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_e
    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/zact;

    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/signin/internal/zak;

    sget-object v5, Lcom/google/android/gms/common/api/internal/zact;->zaa:Lcom/google/android/gms/signin/zaa;

    iget-object v5, p0, Lcom/google/android/gms/signin/internal/zak;->zab:Lcom/google/android/gms/common/ConnectionResult;

    iget v6, v5, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    if-nez v6, :cond_9

    move v6, v3

    goto :goto_8

    :cond_9
    move v6, v2

    :goto_8
    if-eqz v6, :cond_10

    iget-object p0, p0, Lcom/google/android/gms/signin/internal/zak;->zac:Lcom/google/android/gms/common/internal/zav;

    invoke-static {p0}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/google/android/gms/common/internal/zav;->zac:Lcom/google/android/gms/common/ConnectionResult;

    iget v6, v5, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    if-nez v6, :cond_a

    move v2, v3

    :cond_a
    if-nez v2, :cond_b

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "SignInCoordinator"

    invoke-static {v2, p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :cond_b
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zabu;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zav;->zab:Landroid/os/IBinder;

    if-nez p0, :cond_c

    goto :goto_a

    :cond_c
    sget v3, Lcom/google/android/gms/common/internal/AccountAccessor;->$r8$clinit:I

    const-string v3, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/common/internal/IAccountAccessor;

    if-eqz v4, :cond_d

    check-cast v3, Lcom/google/android/gms/common/internal/IAccountAccessor;

    goto :goto_9

    :cond_d
    new-instance v3, Lcom/google/android/gms/common/internal/zzv;

    invoke-direct {v3, p0}, Lcom/google/android/gms/common/internal/zzv;-><init>(Landroid/os/IBinder;)V

    :goto_9
    move-object v4, v3

    :goto_a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_f

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zact;->zae:Ljava/util/Set;

    if-nez p0, :cond_e

    goto :goto_b

    :cond_e
    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    iput-object p0, v2, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/lang/Object;

    iget-boolean v1, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    if-eqz v1, :cond_11

    check-cast v4, Lcom/google/android/gms/common/internal/IAccountAccessor;

    iget-object v1, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/common/api/Api$Client;

    check-cast p0, Ljava/util/Set;

    invoke-interface {v1, v4, p0}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_d

    :cond_f
    :goto_b
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v3, "GoogleApiManager"

    const-string v4, "Received null response from onSignInSuccess"

    invoke-static {v3, v4, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/api/internal/zabu;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_d

    :cond_10
    :goto_c
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zabu;

    invoke-virtual {p0, v5}, Lcom/google/android/gms/common/api/internal/zabu;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_11
    :goto_d
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    return-void

    :pswitch_f
    iget-object v0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iget-object p0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/base/Splitter$1;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ListenerHolder;->zab:Ljava/lang/Object;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_12
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Object;)V

    throw v4
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7

    :catch_7
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0

    :pswitch_10
    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/common/api/internal/zabu;

    iget-object v5, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/internal/zabq;

    if-nez v5, :cond_13

    goto :goto_f

    :cond_13
    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lcom/google/android/gms/common/ConnectionResult;

    iget v6, v6, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    if-nez v6, :cond_14

    move v2, v3

    :cond_14
    if-eqz v2, :cond_16

    iput-boolean v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    iget-object p0, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result p0

    if-eqz p0, :cond_15

    iget-boolean p0, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    if-eqz p0, :cond_17

    iget-object p0, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/internal/IAccountAccessor;

    if-eqz p0, :cond_17

    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/Api$Client;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_f

    :cond_15
    :try_start_7
    check-cast v0, Lcom/google/android/gms/common/api/internal/zabu;

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/Api$Client;

    check-cast p0, Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$Client;->getScopesForConnectionlessNonSignIn()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, v4, p0}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    move-exception p0

    const-string v0, "GoogleApiManager"

    const-string v2, "Failed to get service from broker. "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/api/Api$Client;

    const-string v0, "Failed to get service from broker."

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    goto :goto_e

    :cond_16
    check-cast p0, Lcom/google/android/gms/common/ConnectionResult;

    :goto_e
    invoke-virtual {v5, p0, v4}, Lcom/google/android/gms/common/api/internal/zabq;->zar(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    :cond_17
    :goto_f
    return-void

    :pswitch_11
    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    :try_start_8
    move-object v1, v0

    check-cast v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;

    iget-object v1, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$future:Ljava/lang/Object;

    check-cast v1, Landroidx/work/multiprocess/RemoteDispatcher;

    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast p0, Landroidx/work/multiprocess/IWorkManagerImpl;

    move-object v2, v0

    check-cast v2, Landroidx/work/impl/utils/WorkProgressUpdater$1;

    iget-object v2, v2, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Ljava/lang/Object;

    check-cast v2, Landroidx/work/multiprocess/RemoteCallback;

    invoke-interface {v1, p0, v2}, Landroidx/work/multiprocess/RemoteDispatcher;->execute(Landroid/os/IInterface;Landroidx/work/multiprocess/RemoteCallback;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_10

    :catchall_2
    move-exception p0

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/RemoteWorkManagerClient;->TAG:Ljava/lang/String;

    const-string v3, "Unable to execute"

    invoke-virtual {v1, v2, v3, p0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Landroidx/work/impl/utils/WorkProgressUpdater$1;

    iget-object v0, v0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Ljava/lang/Object;

    check-cast v0, Landroidx/work/multiprocess/RemoteCallback;

    invoke-static {v0, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_10
    return-void

    :pswitch_12
    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    :try_start_9
    move-object v1, v0

    check-cast v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;

    iget-object v1, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$future:Ljava/lang/Object;

    check-cast v1, Landroidx/work/multiprocess/RemoteDispatcher;

    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast p0, Landroidx/work/multiprocess/IListenableWorkerImpl;

    move-object v2, v0

    check-cast v2, Landroidx/work/impl/utils/WorkProgressUpdater$1;

    iget-object v2, v2, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Ljava/lang/Object;

    check-cast v2, Landroidx/work/multiprocess/RemoteCallback;

    invoke-interface {v1, p0, v2}, Landroidx/work/multiprocess/RemoteDispatcher;->execute(Landroid/os/IInterface;Landroidx/work/multiprocess/RemoteCallback;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_11

    :catchall_3
    move-exception p0

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/ListenableWorkerImplClient;->TAG:Ljava/lang/String;

    const-string v3, "Unable to execute"

    invoke-virtual {v1, v2, v3, p0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Landroidx/work/impl/utils/WorkProgressUpdater$1;

    iget-object v0, v0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Ljava/lang/Object;

    check-cast v0, Landroidx/work/multiprocess/RemoteCallback;

    invoke-static {v0, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_11
    return-void

    :pswitch_13
    const-string v0, "Updating notification for "

    const-string v1, "Worker was marked important ("

    iget-object v2, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v2, Landroidx/work/impl/utils/WorkForegroundRunnable;

    iget-object v2, v2, Landroidx/work/impl/utils/WorkForegroundRunnable;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    iget-object v2, v2, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    instance-of v2, v2, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    if-eqz v2, :cond_18

    goto/16 :goto_12

    :cond_18
    :try_start_a
    iget-object v2, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v2, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v2}, Landroidx/work/impl/utils/futures/AbstractFuture;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/work/ForegroundInfo;

    if-eqz v7, :cond_19

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/utils/WorkForegroundRunnable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/utils/WorkForegroundRunnable;

    iget-object v0, v0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/work/impl/utils/WorkForegroundRunnable;

    iget-object v1, v1, Landroidx/work/impl/utils/WorkForegroundRunnable;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    move-object v2, v0

    check-cast v2, Landroidx/work/impl/utils/WorkForegroundRunnable;

    iget-object v2, v2, Landroidx/work/impl/utils/WorkForegroundRunnable;->mForegroundUpdater:Landroidx/work/ForegroundUpdater;

    move-object v3, v0

    check-cast v3, Landroidx/work/impl/utils/WorkForegroundRunnable;

    iget-object v8, v3, Landroidx/work/impl/utils/WorkForegroundRunnable;->mContext:Landroid/content/Context;

    check-cast v0, Landroidx/work/impl/utils/WorkForegroundRunnable;

    iget-object v0, v0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mWorker:Landroidx/work/ListenableWorker;

    iget-object v0, v0, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object v6, v0, Landroidx/work/WorkerParameters;->mId:Ljava/util/UUID;

    check-cast v2, Landroidx/work/impl/utils/WorkForegroundUpdater;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {v0}, Landroidx/work/impl/utils/futures/SettableFuture;-><init>()V

    new-instance v10, Lcom/google/mlkit/common/sdkinternal/zzn;

    const/4 v9, 0x2

    move-object v3, v10

    move-object v4, v2

    move-object v5, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/mlkit/common/sdkinternal/zzn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v2, v2, Landroidx/work/impl/utils/WorkForegroundUpdater;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    invoke-virtual {v2, v10}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->executeOnTaskThread(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    goto :goto_12

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/utils/WorkForegroundRunnable;

    iget-object v1, v1, Landroidx/work/impl/utils/WorkForegroundRunnable;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v1, v1, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") but did not provide ForegroundInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    iget-object p0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/utils/WorkForegroundRunnable;

    iget-object p0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_12
    return-void

    :pswitch_14
    :try_start_b
    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    iget-object v0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/utils/SerialExecutorImpl;

    iget-object v0, v0, Landroidx/work/impl/utils/SerialExecutorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/utils/SerialExecutorImpl;

    invoke-virtual {p0}, Landroidx/work/impl/utils/SerialExecutorImpl;->scheduleNext()V

    monitor-exit v0

    return-void

    :catchall_5
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw p0

    :catchall_6
    move-exception v0

    iget-object v1, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/utils/SerialExecutorImpl;

    iget-object v1, v1, Landroidx/work/impl/utils/SerialExecutorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/utils/SerialExecutorImpl;

    invoke-virtual {p0}, Landroidx/work/impl/utils/SerialExecutorImpl;->scheduleNext()V

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v0

    :catchall_7
    move-exception p0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw p0

    :pswitch_15
    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    iget-object v0, v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mProcessor:Landroidx/work/impl/Processor;

    iget-object v1, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_f
    iget-object v3, v0, Landroidx/work/impl/Processor;->mForegroundWorkMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/impl/WorkerWrapper;

    if-nez v3, :cond_1a

    iget-object v0, v0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/work/impl/WorkerWrapper;

    :cond_1a
    if-eqz v3, :cond_1b

    iget-object v4, v3, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    :cond_1b
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Landroidx/work/impl/model/WorkSpec;->hasConstraints()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    iget-object v0, v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_10
    iget-object v1, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    iget-object v1, v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkSpecById:Ljava/util/HashMap;

    invoke-static {v4}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    iget-object v1, v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mTrackedWorkSpecs:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    iget-object v1, v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;

    check-cast p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mTrackedWorkSpecs:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;->replace(Ljava/lang/Iterable;)V

    monitor-exit v0

    goto :goto_13

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    throw p0

    :cond_1c
    :goto_13
    return-void

    :catchall_9
    move-exception p0

    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    throw p0

    :pswitch_16
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scheduling work "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/model/WorkSpec;

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    iget-object v0, v0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mGreedyScheduler:Landroidx/work/impl/background/greedy/GreedyScheduler;

    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/model/WorkSpec;

    filled-new-array {p0}, [Landroidx/work/impl/model/WorkSpec;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/work/impl/background/greedy/GreedyScheduler;->schedule([Landroidx/work/impl/model/WorkSpec;)V

    return-void

    :pswitch_17
    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    :try_start_12
    move-object v2, v0

    check-cast v2, Landroidx/work/impl/WorkerWrapper;

    iget-object v2, v2, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v2}, Landroidx/work/impl/utils/futures/AbstractFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/ListenableWorker$Result;

    if-nez v2, :cond_1d

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    check-cast v5, Landroidx/work/impl/WorkerWrapper;

    iget-object v5, v5, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " returned a null result. Treating it as a failure."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_1d
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    check-cast v6, Landroidx/work/impl/WorkerWrapper;

    iget-object v6, v6, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v6, v6, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " returned a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroidx/work/impl/WorkerWrapper;

    iput-object v2, v3, Landroidx/work/impl/WorkerWrapper;->mResult:Landroidx/work/ListenableWorker$Result;
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    goto :goto_14

    :catchall_a
    move-exception p0

    goto :goto_15

    :catch_9
    move-exception v1

    :try_start_13
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed because it threw an exception/error"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0, v1}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    :catch_a
    move-exception v2

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was cancelled"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget v3, v3, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    if-gt v3, v1, :cond_1e

    invoke-static {v4, p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    :cond_1e
    :goto_14
    check-cast v0, Landroidx/work/impl/WorkerWrapper;

    invoke-virtual {v0}, Landroidx/work/impl/WorkerWrapper;->onWorkFinished()V

    return-void

    :goto_15
    check-cast v0, Landroidx/work/impl/WorkerWrapper;

    invoke-virtual {v0}, Landroidx/work/impl/WorkerWrapper;->onWorkFinished()V

    throw p0

    :pswitch_18
    const-string v0, "Starting work for "

    iget-object v1, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/WorkerWrapper;

    iget-object v1, v1, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    iget-object v1, v1, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    instance-of v1, v1, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    if-eqz v1, :cond_1f

    goto :goto_16

    :cond_1f
    :try_start_14
    iget-object v1, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkerWrapper;

    iget-object v0, v0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/work/impl/WorkerWrapper;

    iget-object v1, v1, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    check-cast v0, Landroidx/work/impl/WorkerWrapper;

    iget-object v0, v0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->startWork()Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    goto :goto_16

    :catchall_b
    move-exception v0

    iget-object p0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkerWrapper;

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_16
    return-void

    :pswitch_19
    iget-object v0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v0, Landroid/app/Application;

    iget-object p0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :pswitch_1a
    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    throw v4

    :pswitch_1b
    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v1, :cond_20

    iget-object v5, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    if-eqz v5, :cond_20

    invoke-interface {v5, v1}, Landroidx/appcompat/view/menu/MenuBuilder$Callback;->onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V

    :cond_20
    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_21

    goto :goto_17

    :cond_21
    iget-object v5, v1, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-nez v5, :cond_22

    goto :goto_18

    :cond_22
    invoke-virtual {v1, v2, v2, v2, v2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    :goto_17
    move v2, v3

    :goto_18
    if-eqz v2, :cond_23

    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    iput-object p0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    :cond_23
    iput-object v4, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/work/Worker$2;

    return-void

    :pswitch_1c
    :try_start_15
    iget-object v0, p0, Landroidx/work/Worker$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/work/Worker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expedited WorkRequests require a Worker to provide an implementation for \n `getForegroundInfo()`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    :catchall_c
    move-exception v0

    iget-object p0, p0, Landroidx/work/Worker$2;->val$future:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
