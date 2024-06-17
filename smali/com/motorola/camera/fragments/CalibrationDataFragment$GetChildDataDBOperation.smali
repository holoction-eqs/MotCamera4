.class public final Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;
.super L_COROUTINE/_BOUNDARY;
.source "SourceFile"


# instance fields
.field public final mGroupCursor:Landroid/database/Cursor;

.field public final mGroupPosition:I

.field public final synthetic this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, L_COROUTINE/_BOUNDARY;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;->mGroupPosition:I

    return-void
.end method


# virtual methods
.method public final query()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v2, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;->mGroupPosition:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v3, "CalibrationBackCam"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "CalibrationFrontCam"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "RAW_SQL"

    const-string v7, "select keytag, calbrtnvalue, _id from events WHERE keytype = ? "

    invoke-virtual {v1, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "SELECTION_ARGS"

    if-eqz v0, :cond_0

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3, v5}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->rawQueryData(Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportCursorWrapper;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportCursorWrapper;-><init>(Landroid/database/Cursor;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x2

    iput v3, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mHandler:Landroidx/preference/PreferenceFragmentCompat$1;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
