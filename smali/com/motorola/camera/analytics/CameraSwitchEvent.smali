.class public final Lcom/motorola/camera/analytics/CameraSwitchEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "SourceFile"


# static fields
.field public static final sSwitchTypeMap:Landroid/util/SparseArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;->sSwitchTypeMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "TOUCH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    const-string v2, "GSTR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x2

    const-string v2, "AOV"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addData(Landroidx/work/impl/StartStopTokens;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 4

    check-cast p3, Landroid/os/Bundle;

    const-string p0, "SRC_CAM"

    invoke-virtual {p3, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SRCCAM"

    invoke-virtual {p3, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string p0, "SRC_MODE"

    invoke-virtual {p3, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SRCMODE"

    invoke-virtual {p3, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const-string p0, "DEST_CAM"

    invoke-virtual {p3, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "DESTCAM"

    invoke-virtual {p3, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    const-string p0, "DEST_MODE"

    invoke-virtual {p3, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "DESTMODE"

    invoke-virtual {p3, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string p0, "SWITCHTIME"

    invoke-virtual {p1, p0}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "SWITCH_TYPE"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    sget-object v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;->sSwitchTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v0, "SWITCHTRIGGER"

    invoke-virtual {p2, v0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/work/impl/StartStopTokens;->remove(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroidx/work/impl/StartStopTokens;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final getEventType()Lcom/motorola/camera/analytics/AnalyticsService$EventType;
    .locals 0

    sget-object p0, Lcom/motorola/camera/analytics/AnalyticsService$EventType;->CAMERA_SWITCHED:Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    return-object p0
.end method

.method public final getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.7"

    return-object p0
.end method
