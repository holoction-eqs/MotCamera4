.class public final Landroidx/work/impl/WorkerWrapper$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mAppContext:Landroid/content/Context;

.field public final mConfiguration:Landroidx/work/Configuration;

.field public final mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

.field public mRuntimeExtras:Landroidx/core/view/MenuHostHelper;

.field public mSchedulers:Ljava/util/List;

.field public final mTags:Ljava/util/List;

.field public final mWorkDatabase:Landroidx/work/impl/WorkDatabase;

.field public final mWorkSpec:Landroidx/work/impl/model/WorkSpec;

.field public final mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Ljava/util/ArrayList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/core/view/MenuHostHelper;-><init>(I)V

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mRuntimeExtras:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mAppContext:Landroid/content/Context;

    iput-object p3, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iput-object p4, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    iput-object p2, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mConfiguration:Landroidx/work/Configuration;

    iput-object p5, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    iput-object p6, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iput-object p7, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mTags:Ljava/util/List;

    return-void
.end method
