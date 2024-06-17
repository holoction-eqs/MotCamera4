.class public abstract Lcom/motorola/camera/fragments/ReportFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

.field public mExecutor:Ljava/util/concurrent/ExecutorService;

.field public mExpandableListView:Landroid/widget/ExpandableListView;

.field public final mHandler:Landroid/os/Handler;

.field public final mOpenGroupSet:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mOpenGroupSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final doDataIO(Landroidx/work/WorkContinuation;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/motorola/camera/fragments/ReportFragment$GetDataFromDBThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/fragments/ReportFragment$GetDataFromDBThreadFactory;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_1
    new-instance v0, Landroidx/work/Worker$1;

    const/16 v1, 0x18

    invoke-direct {v0, p1, v1}, Landroidx/work/Worker$1;-><init>(Ljava/lang/Object;I)V

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error executing current measure runnable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :goto_0
    return-void
.end method

.method public abstract getGroup()V
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const p3, 0x7f0d0076

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0247

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;

    const/16 v1, 0xa

    invoke-direct {p3, p0, v1}, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0246

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ExpandableListView;

    iput-object p2, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    new-instance p3, Lcom/motorola/camera/fragments/ReportFragment$ReportListChildClickListener;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Lcom/motorola/camera/fragments/ReportFragment$ReportListChildClickListener;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    new-instance p2, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string p3, "keytag"

    const-string v2, "keyvalue"

    filled-new-array {p3, v2}, [Ljava/lang/String;

    move-result-object v5

    const v3, 0x7f0a03f3

    const v6, 0x7f0a03f4

    filled-new-array {v3, v6}, [I

    move-result-object v7

    filled-new-array {p3, v2}, [Ljava/lang/String;

    move-result-object p3

    filled-new-array {v3, v6}, [I

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, p2

    move-object v3, p0

    move-object v6, v7

    move-object v7, p3

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;-><init>(Landroidx/fragment/app/Fragment;Lcom/motorola/camera/CameraApp;[Ljava/lang/String;[I[Ljava/lang/String;[II)V

    iput-object p2, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    new-instance p3, Lcom/motorola/camera/fragments/ReportFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/motorola/camera/fragments/ReportFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, p3}, Landroid/widget/SimpleCursorTreeAdapter;->setViewBinder(Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;)V

    iget-object p2, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object p3, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    new-instance p2, Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;

    invoke-direct {p2, p0, v1}, Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;-><init>(Lcom/motorola/camera/fragments/ReportFragment;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/fragments/ReportFragment;->doDataIO(Landroidx/work/WorkContinuation;)V

    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string p3, "com.motorola.camera_debug_report"

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iget-object p3, p0, Lcom/motorola/camera/fragments/ReportFragment;->TAG:Ljava/lang/String;

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const p3, 0x7f0a0248

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Switch;

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p3, p2}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance p2, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p1
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method
