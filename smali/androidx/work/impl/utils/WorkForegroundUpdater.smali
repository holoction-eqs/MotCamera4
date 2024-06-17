.class public final Landroidx/work/impl/utils/WorkForegroundUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/ForegroundUpdater;


# instance fields
.field public final mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

.field public final mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

.field public final mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WMFgUpdater"

    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/work/impl/utils/WorkForegroundUpdater;->mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    iput-object p3, p0, Landroidx/work/impl/utils/WorkForegroundUpdater;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/utils/WorkForegroundUpdater;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    return-void
.end method
