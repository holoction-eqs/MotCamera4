.class public final Landroidx/work/Logger$LogcatLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sLock:Ljava/lang/Object;

.field public static volatile sLogger:Landroidx/work/Logger$LogcatLogger;


# instance fields
.field public final mLoggingLevel:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/Logger$LogcatLogger;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    return-void
.end method

.method public static get()Landroidx/work/Logger$LogcatLogger;
    .locals 3

    sget-object v0, Landroidx/work/Logger$LogcatLogger;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/work/Logger$LogcatLogger;->sLogger:Landroidx/work/Logger$LogcatLogger;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/work/Logger$LogcatLogger;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroidx/work/Logger$LogcatLogger;-><init>(I)V

    sput-object v1, Landroidx/work/Logger$LogcatLogger;->sLogger:Landroidx/work/Logger$LogcatLogger;

    :cond_0
    sget-object v1, Landroidx/work/Logger$LogcatLogger;->sLogger:Landroidx/work/Logger$LogcatLogger;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "WM-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget p0, p0, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget p0, p0, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v0, 0x6

    if-gt p0, v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget p0, p0, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v0, 0x6

    if-gt p0, v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget p0, p0, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final warning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget p0, p0, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
