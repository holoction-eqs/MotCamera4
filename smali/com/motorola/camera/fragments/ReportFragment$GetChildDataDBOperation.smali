.class public final Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;
.super Landroidx/work/WorkContinuation;
.source "SourceFile"


# instance fields
.field public final mGroupCursor:Landroid/database/Cursor;

.field public final mGroupPosition:I

.field public final synthetic this$0:Lcom/motorola/camera/fragments/ReportFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fragments/ReportFragment;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;->this$0:Lcom/motorola/camera/fragments/ReportFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/work/WorkContinuation;-><init>(I)V

    iput-object p2, p0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;->mGroupPosition:I

    return-void
.end method


# virtual methods
.method public final query()V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v2, p0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;->mGroupPosition:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v3, "keytag"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "camera"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "coldstart"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mode"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v3, v4, v5, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v3, "RAW_SQL"

    const-string v4, "SELECT keytag, keyvalue, camera, coldstart, mode, flash, focus, hdr, _id FROM events WHERE keytag = ? AND camera = ? AND coldstart = ? AND mode = ? ORDER BY timestamp DESC"

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SELECTION_ARGS"

    invoke-virtual {v1, v3, v0}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->rawQueryData(Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v3}, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;-><init>(Landroid/database/Cursor;I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v3, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;->this$0:Lcom/motorola/camera/fragments/ReportFragment;

    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
