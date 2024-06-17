.class public final Lcom/motorola/camera/CameraData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mBundle:Landroidx/work/impl/StartStopTokens;


# direct methods
.method public constructor <init>(JLandroid/net/Uri;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4, p5}, Lcom/motorola/camera/CameraData;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string p3, "GLOBAL_UUID"

    invoke-virtual {p0, p1, p2, p3}, Landroidx/work/impl/StartStopTokens;->putLong(JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLandroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .line 2
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    invoke-virtual {p0, p5}, Landroidx/work/impl/StartStopTokens;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V
    .locals 7

    .line 3
    move-object v6, p0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p13

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;I)V

    iget-object v0, v6, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v1, "FILE_PATH"

    move-object v2, p5

    invoke-virtual {v0, v1, p5}, Landroidx/work/impl/StartStopTokens;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v1, "DATE_TAKEN"

    move-wide v2, p6

    invoke-virtual {v0, p6, p7, v1}, Landroidx/work/impl/StartStopTokens;->putLong(JLjava/lang/String;)V

    iget-object v0, v6, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v1, "DATE_MODIFIED"

    move-wide v2, p8

    invoke-virtual {v0, v2, v3, v1}, Landroidx/work/impl/StartStopTokens;->putLong(JLjava/lang/String;)V

    iget-object v0, v6, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v1, "ORIENTATION"

    move/from16 v2, p12

    invoke-virtual {v0, v2, v1}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    iget-object v0, v6, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v1, "THUMB_WIDTH"

    move/from16 v2, p10

    invoke-virtual {v0, v2, v1}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    iget-object v0, v6, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v1, "THUMB_HEIGHT"

    move/from16 v2, p11

    invoke-virtual {v0, v2, v1}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIIILcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p13}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string p1, "SEQ_ID"

    invoke-virtual {p0, p1, p14}, Landroidx/work/impl/StartStopTokens;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .line 5
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string p1, "ERROR_CASE"

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/work/impl/StartStopTokens;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/work/impl/StartStopTokens;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    if-eqz p1, :cond_0

    const-string p0, "ID"

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p0}, Landroidx/work/impl/StartStopTokens;->putLong(JLjava/lang/String;)V

    :cond_0
    const-string p0, "URI"

    invoke-virtual {v0, p0, p1}, Landroidx/work/impl/StartStopTokens;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "FILE_NAME"

    invoke-virtual {v0, p0, p2}, Landroidx/work/impl/StartStopTokens;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "DATE_TYPE"

    invoke-virtual {v0, p3, p0}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/work/impl/StartStopTokens;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/work/impl/StartStopTokens;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    invoke-virtual {v0, p1}, Landroidx/work/impl/StartStopTokens;->putAll(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final getDataType()I
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v0, "DATE_TYPE"

    invoke-virtual {p0, v0}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getDateTaken()J
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v0, "DATE_TAKEN"

    invoke-virtual {p0, v0}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v0, "FILE_NAME"

    invoke-virtual {p0, v0}, Landroidx/work/impl/StartStopTokens;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getId()J
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v0, "ID"

    invoke-virtual {p0, v0}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOrientation()I
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v0, "ORIENTATION"

    invoke-virtual {p0, v0}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v0, "SEQ_ID"

    invoke-virtual {p0, v0}, Landroidx/work/impl/StartStopTokens;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    return-object p0
.end method

.method public final getTaskID()Lcom/motorola/camera/background/common/TaskId;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v0, "task_id"

    invoke-virtual {p0, v0}, Landroidx/work/impl/StartStopTokens;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/TaskId;

    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v0, "URI"

    invoke-virtual {p0, v0}, Landroidx/work/impl/StartStopTokens;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public final isFromCurrentSession()Z
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v0, "GLOBAL_UUID"

    invoke-virtual {p0, v0}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getGlobalSessionUUID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isRaw()Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, ".dng"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLOBAL_UUID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "GLOBAL_UUID"

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    invoke-virtual {p0, v1}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ID"

    invoke-virtual {p0, v1}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",DATE_TYPE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DATE_TYPE"

    invoke-virtual {p0, v1}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",FILE_NAME:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FILE_NAME"

    invoke-virtual {p0, v1}, Landroidx/work/impl/StartStopTokens;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",FILE_PATH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FILE_PATH"

    invoke-virtual {p0, v1}, Landroidx/work/impl/StartStopTokens;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",URI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "URI"

    invoke-virtual {p0, v1}, Landroidx/work/impl/StartStopTokens;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",PROCESSING_URI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PROCESSING_URI"

    invoke-virtual {p0, v1}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",DATE_TAKEN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DATE_TAKEN"

    invoke-virtual {p0, v1}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",DATE_MODIFIED:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DATE_MODIFIED"

    invoke-virtual {p0, v1}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",ORIENTATION:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ORIENTATION"

    invoke-virtual {p0, v1}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",THUMB_WIDTH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "THUMB_WIDTH"

    invoke-virtual {p0, v1}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",THUMB_HEIGHT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "THUMB_HEIGHT"

    invoke-virtual {p0, v1}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",IS_PRIMARY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "IS_PRIMARY"

    invoke-virtual {p0, v1}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
