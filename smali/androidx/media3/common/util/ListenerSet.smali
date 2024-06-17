.class public final Landroidx/media3/common/util/ListenerSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final clock:Ljava/lang/Object;

.field public flushingEvents:Ljava/lang/Object;

.field public final handler:Ljava/lang/Object;

.field public final iterationFinishedEvent:Ljava/lang/Object;

.field public final listeners:Ljava/util/AbstractCollection;

.field public final queuedEvents:Ljava/lang/Object;

.field public released:Z

.field public final releasedLock:Ljava/lang/Object;

.field public throwsWhenUsingWrongThread:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/common/util/ListenerSet;->released:Z

    iput-boolean v0, p0, Landroidx/media3/common/util/ListenerSet;->throwsWhenUsingWrongThread:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedEvent:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/AbstractCollection;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/common/util/ListenerSet;->flushingEvents:Ljava/lang/Object;

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/util/ListenerSet;->queuedEvents:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/util/ListenerSet;->releasedLock:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->clock:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->handler:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/media3/common/util/ListenerSet;->clock:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/AbstractCollection;

    iput-object p4, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedEvent:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->releasedLock:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->flushingEvents:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->queuedEvents:Ljava/lang/Object;

    new-instance p1, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;

    const/4 p4, 0x0

    invoke-direct {p1, p0, p4}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    check-cast p3, Landroidx/media3/common/util/SystemClock;

    invoke-virtual {p3, p2, p1}, Landroidx/media3/common/util/SystemClock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/SystemHandlerWrapper;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->handler:Ljava/lang/Object;

    iput-boolean p5, p0, Landroidx/media3/common/util/ListenerSet;->throwsWhenUsingWrongThread:Z

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->releasedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/common/util/ListenerSet;->released:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/AbstractCollection;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    invoke-direct {v1, p1}, Landroidx/media3/common/util/ListenerSet$ListenerHolder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V
    .locals 9

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->runGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    if-nez p3, :cond_a

    iget-object p3, p0, Landroidx/media3/common/util/ListenerSet;->clock:Ljava/lang/Object;

    check-cast p3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    if-eq p1, v0, :cond_a

    iget-object p3, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-ne p1, p3, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p5, :cond_1

    new-instance p5, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    invoke-direct {p5, p1}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object p5, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->runGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    iget-object p3, p5, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->runs:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/util/ListenerSet;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    goto :goto_0

    :cond_3
    iget-object v6, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v0, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/util/ListenerSet;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    goto :goto_1

    :cond_5
    const/4 v7, 0x1

    if-ne p2, v7, :cond_7

    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/util/ListenerSet;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    goto :goto_2

    :cond_7
    iget-object p3, p3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/util/ListenerSet;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    goto :goto_3

    :cond_8
    iget-object p3, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/util/ListenerSet;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    goto :goto_4

    :cond_9
    if-ne p2, v7, :cond_a

    instance-of p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-eqz p3, :cond_a

    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/util/ListenerSet;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    goto :goto_5

    :cond_a
    :goto_6
    return-void
.end method

.method public final basicMeasureWidgets(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 16

    move-object/from16 v0, p1

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v9, 0x1

    aget v3, v3, v9

    iget v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    :goto_1
    iput-boolean v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    goto :goto_0

    :cond_1
    iget v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v7, v6, v10

    const/4 v8, 0x2

    const/4 v11, 0x3

    if-gez v7, :cond_2

    if-ne v5, v11, :cond_2

    iput v8, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    :cond_2
    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    cmpg-float v12, v7, v10

    if-gez v12, :cond_3

    if-ne v3, v11, :cond_3

    iput v8, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    :cond_3
    iget v12, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    if-ne v5, v11, :cond_5

    if-eq v3, v8, :cond_4

    if-ne v3, v9, :cond_5

    :cond_4
    iput v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    goto :goto_3

    :cond_5
    if-ne v3, v11, :cond_6

    if-eq v5, v8, :cond_8

    if-ne v5, v9, :cond_6

    goto :goto_2

    :cond_6
    if-ne v5, v11, :cond_9

    if-ne v3, v11, :cond_9

    iget v12, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v12, :cond_7

    iput v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    :cond_7
    iget v12, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v12, :cond_9

    :cond_8
    :goto_2
    iput v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    :cond_9
    :goto_3
    iget-object v12, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v5, v11, :cond_b

    iget v14, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v14, v9, :cond_b

    iget-object v14, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v14, :cond_a

    iget-object v14, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v14, :cond_b

    :cond_a
    move v5, v8

    :cond_b
    iget-object v14, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v3, v11, :cond_d

    iget v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v10, v9, :cond_d

    iget-object v10, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v10, :cond_c

    iget-object v10, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v10, :cond_d

    :cond_c
    move v10, v8

    goto :goto_4

    :cond_d
    move v10, v3

    :goto_4
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iput v5, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:I

    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iput v10, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:I

    iget v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    iput v11, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    const/4 v3, 0x4

    if-eq v5, v3, :cond_e

    if-eq v5, v9, :cond_e

    if-ne v5, v8, :cond_f

    :cond_e
    if-eq v10, v3, :cond_25

    if-eq v10, v9, :cond_25

    if-ne v10, v8, :cond_f

    goto/16 :goto_d

    :cond_f
    const/high16 v12, 0x3f000000    # 0.5f

    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    iget-object v14, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v15, 0x3

    if-ne v5, v15, :cond_18

    if-eq v10, v8, :cond_10

    if-ne v10, v9, :cond_18

    :cond_10
    if-ne v4, v15, :cond_12

    if-ne v10, v8, :cond_11

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x2

    move-object/from16 v3, p0

    move-object v4, v2

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/util/ListenerSet;->measure$enumunboxing$(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IIII)V

    :cond_11
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    int-to-float v3, v8

    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v12

    float-to-int v6, v3

    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-object v4, v2

    move v5, v7

    goto/16 :goto_f

    :cond_12
    if-ne v4, v9, :cond_13

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x2

    move-object/from16 v3, p0

    move-object v4, v2

    move v7, v10

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/util/ListenerSet;->measure$enumunboxing$(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IIII)V

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    goto/16 :goto_c

    :cond_13
    if-ne v4, v8, :cond_15

    const/4 v15, 0x0

    aget v8, v13, v15

    if-eq v8, v9, :cond_14

    if-ne v8, v3, :cond_16

    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v6, v3

    add-float/2addr v6, v12

    float-to-int v3, v6

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    move v6, v3

    move v8, v4

    move v7, v10

    goto :goto_7

    :cond_15
    const/4 v8, 0x0

    aget-object v15, v14, v8

    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v8, :cond_17

    aget-object v8, v14, v9

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v8, :cond_16

    goto :goto_5

    :cond_16
    const/4 v8, 0x3

    goto :goto_6

    :cond_17
    :goto_5
    move v7, v10

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    goto/16 :goto_e

    :cond_18
    move v8, v15

    :goto_6
    if-ne v10, v8, :cond_22

    const/4 v15, 0x2

    if-eq v5, v15, :cond_19

    if-ne v5, v9, :cond_22

    :cond_19
    if-ne v11, v8, :cond_1c

    if-ne v5, v15, :cond_1a

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x2

    move-object/from16 v3, p0

    move-object v4, v2

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/util/ListenerSet;->measure$enumunboxing$(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IIII)V

    :cond_1a
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    iget v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1b

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v4, v5, v4

    :cond_1b
    int-to-float v5, v3

    mul-float/2addr v5, v4

    add-float/2addr v5, v12

    float-to-int v4, v5

    move v6, v3

    move v8, v4

    move v7, v9

    :goto_7
    const/4 v5, 0x1

    goto/16 :goto_e

    :cond_1c
    if-ne v11, v9, :cond_1d

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x2

    move-object/from16 v3, p0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/util/ListenerSet;->measure$enumunboxing$(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IIII)V

    goto/16 :goto_b

    :cond_1d
    const/4 v8, 0x2

    if-ne v11, v8, :cond_1f

    aget v8, v13, v9

    if-eq v8, v9, :cond_1e

    if-ne v8, v3, :cond_20

    :cond_1e
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v7, v4

    add-float/2addr v7, v12

    float-to-int v4, v7

    move v6, v3

    move v8, v4

    move v7, v9

    goto/16 :goto_e

    :cond_1f
    move v3, v8

    aget-object v8, v14, v3

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_21

    const/4 v3, 0x3

    aget-object v8, v14, v3

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v3, :cond_20

    goto :goto_8

    :cond_20
    const/4 v3, 0x3

    goto :goto_9

    :cond_21
    :goto_8
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x2

    move-object/from16 v3, p0

    move-object v4, v2

    move v7, v10

    goto/16 :goto_f

    :cond_22
    move v3, v8

    :goto_9
    if-ne v5, v3, :cond_0

    if-ne v10, v3, :cond_0

    if-eq v4, v9, :cond_24

    if-ne v11, v9, :cond_23

    goto :goto_a

    :cond_23
    const/4 v3, 0x2

    if-ne v11, v3, :cond_0

    if-ne v4, v3, :cond_0

    const/4 v3, 0x0

    aget v3, v13, v3

    if-ne v3, v9, :cond_0

    aget v3, v13, v9

    if-ne v3, v9, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v6, v3

    add-float/2addr v6, v12

    float-to-int v3, v6

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v7, v4

    add-float/2addr v7, v12

    float-to-int v4, v7

    move v6, v3

    move v8, v4

    move v5, v9

    move v7, v5

    goto :goto_e

    :cond_24
    :goto_a
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x2

    move-object/from16 v3, p0

    move-object v4, v2

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/util/ListenerSet;->measure$enumunboxing$(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IIII)V

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    :goto_b
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    :goto_c
    iput v2, v3, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    goto/16 :goto_0

    :cond_25
    :goto_d
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    if-ne v5, v3, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    iget v5, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v4, v5

    iget v5, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v4, v5

    move v5, v9

    :cond_26
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    if-ne v10, v3, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    iget v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v3, v6

    iget v6, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    sub-int v6, v3, v6

    move v10, v9

    :cond_27
    move v8, v6

    move v7, v10

    move v6, v4

    :goto_e
    move-object/from16 v3, p0

    move-object v4, v2

    :goto_f
    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/util/ListenerSet;->measure$enumunboxing$(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IIII)V

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto/16 :goto_1

    :cond_28
    return-void
.end method

.method public final buildGraph()V
    .locals 8

    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedEvent:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->handler:Ljava/lang/Object;

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->clear()V

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->clear()V

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v7, v4, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v7, :cond_1

    new-instance v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;

    invoke-direct {v5, v4}, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto :goto_3

    :cond_1
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    if-nez v7, :cond_2

    new-instance v7, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    invoke-direct {v7, v6, v4}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;-><init>(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    iput-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :cond_3
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    if-nez v6, :cond_5

    new-instance v6, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    invoke-direct {v6, v5, v4}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;-><init>(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    iput-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    :cond_5
    if-nez v3, :cond_6

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :cond_6
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    instance-of v5, v4, Landroidx/constraintlayout/core/widgets/HelperWidget;

    if-eqz v5, :cond_0

    new-instance v5, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    invoke-direct {v5, v4}, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    :goto_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->clear()V

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-ne v3, v1, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->apply()V

    goto :goto_5

    :cond_c
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->releasedLock:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->clock:Ljava/lang/Object;

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {p0, v2, v6, v0}, Landroidx/media3/common/util/ListenerSet;->findGroup(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {p0, v1, v5, v0}, Landroidx/media3/common/util/ListenerSet;->findGroup(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    iput-boolean v6, p0, Landroidx/media3/common/util/ListenerSet;->released:Z

    return-void
.end method

.method public final computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p2

    iget-object v1, v1, Landroidx/media3/common/util/ListenerSet;->releasedLock:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_0
    if-ge v4, v3, :cond_d

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    if-eqz v10, :cond_0

    move-object v10, v9

    check-cast v10, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    if-eq v10, v2, :cond_2

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    if-nez v10, :cond_2

    goto :goto_1

    :cond_1
    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-nez v10, :cond_2

    :goto_1
    move-object/from16 p0, v1

    move/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_7

    :cond_2
    if-nez v2, :cond_3

    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    goto :goto_2

    :cond_3
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    :goto_2
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-nez v2, :cond_4

    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    goto :goto_3

    :cond_4
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    :goto_3
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v12, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    iget-object v12, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v13, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v13

    iget-object v15, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-eqz v10, :cond_a

    if-eqz v11, :cond_a

    invoke-static {v15, v7, v8}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v10

    invoke-static {v12, v7, v8}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v7

    sub-long/2addr v10, v13

    iget v0, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    move-object/from16 p0, v1

    neg-int v1, v0

    move/from16 v16, v3

    move/from16 v17, v4

    int-to-long v3, v1

    cmp-long v1, v10, v3

    if-ltz v1, :cond_5

    int-to-long v0, v0

    add-long/2addr v10, v0

    :cond_5
    neg-long v0, v7

    sub-long/2addr v0, v13

    iget v3, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v3, v3

    sub-long/2addr v0, v3

    cmp-long v7, v0, v3

    if-ltz v7, :cond_6

    sub-long/2addr v0, v3

    :cond_6
    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v2, :cond_7

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto :goto_4

    :cond_7
    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v3, -0x40800000    # -1.0f

    :goto_4
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    const/high16 v7, 0x3f800000    # 1.0f

    if-lez v4, :cond_9

    long-to-float v0, v0

    div-float/2addr v0, v3

    long-to-float v1, v10

    sub-float v4, v7, v3

    div-float/2addr v1, v4

    add-float/2addr v1, v0

    float-to-long v0, v1

    goto :goto_5

    :cond_9
    const-wide/16 v0, 0x0

    :goto_5
    long-to-float v0, v0

    mul-float v1, v0, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    float-to-long v8, v1

    invoke-static {v7, v3, v0, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(FFFF)F

    move-result v0

    float-to-long v0, v0

    add-long/2addr v8, v13

    add-long/2addr v8, v0

    iget v0, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v0, v0

    add-long/2addr v0, v8

    iget v3, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v3, v3

    sub-long v7, v0, v3

    goto :goto_7

    :cond_a
    move-object/from16 p0, v1

    move/from16 v16, v3

    move/from16 v17, v4

    if-eqz v10, :cond_b

    iget v0, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v0, v0

    invoke-static {v15, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v0

    iget v3, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v3, v3

    add-long/2addr v3, v13

    goto :goto_6

    :cond_b
    if-eqz v11, :cond_c

    iget v0, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v0, v0

    invoke-static {v12, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v0

    iget v3, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    neg-int v3, v3

    int-to-long v3, v3

    add-long/2addr v3, v13

    neg-long v0, v0

    :goto_6
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_7

    :cond_c
    iget v0, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v0, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v3

    add-long/2addr v3, v0

    iget v0, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v0, v0

    sub-long v7, v3, v0

    :goto_7
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    add-int/lit8 v4, v17, 0x1

    const-wide/16 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v3, v16

    goto/16 :goto_0

    :cond_d
    long-to-int v0, v5

    return v0
.end method

.method public final findGroup(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V
    .locals 8

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-eqz v2, :cond_1

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    :goto_1
    move-object v3, v1

    goto :goto_2

    :cond_1
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    goto :goto_1

    :goto_2
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/util/ListenerSet;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    goto :goto_0

    :cond_2
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-eqz v2, :cond_4

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    :goto_4
    move-object v3, v1

    goto :goto_5

    :cond_4
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    if-eqz v2, :cond_3

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    goto :goto_4

    :goto_5
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/util/ListenerSet;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_6

    move-object v3, v0

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v5, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/util/ListenerSet;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    goto :goto_6

    :cond_7
    return-void
.end method

.method public final flushEvents()V
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->verifyCurrentThread()V

    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->queuedEvents:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->handler:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/util/HandlerWrapper;

    check-cast v1, Landroidx/media3/common/util/SystemHandlerWrapper;

    iget-object v2, v1, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainSystemMessage()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v2

    iget-object v4, v1, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    const/4 v1, 0x0

    iput-object v1, v2, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    sget-object v1, Landroidx/media3/common/util/SystemHandlerWrapper;->messagePool:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x32

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->flushingEvents:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Landroidx/media3/common/util/ListenerSet;->flushingEvents:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    if-eqz v1, :cond_3

    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->flushingEvents:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->flushingEvents:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->flushingEvents:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final measure$enumunboxing$(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IIII)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->queuedEvents:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iput p2, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    iput p4, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    iput p3, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    iput p5, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet;->flushingEvents:Ljava/lang/Object;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    iget p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    iget p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    iget-boolean p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    iput-boolean p0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    iget p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    iput p0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    return-void
.end method

.method public final measureWidgets()V
    .locals 13

    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->clock:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    const/4 v3, 0x0

    aget v8, v2, v3

    const/4 v9, 0x1

    aget v10, v2, v9

    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v5, 0x2

    const/4 v11, 0x3

    if-eq v8, v5, :cond_3

    if-ne v8, v11, :cond_2

    if-ne v2, v9, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v9

    :goto_2
    if-eq v10, v5, :cond_4

    if-ne v10, v11, :cond_5

    if-ne v4, v9, :cond_5

    :cond_4
    move v3, v9

    :cond_5
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    const/4 v12, 0x1

    if-eqz v5, :cond_6

    if-eqz v7, :cond_6

    iget v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    iget v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, v1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/util/ListenerSet;->measure$enumunboxing$(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IIII)V

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_7

    if-eqz v3, :cond_7

    iget v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    iget v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    const/4 v4, 0x1

    const/4 v6, 0x2

    move-object v2, p0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/util/ListenerSet;->measure$enumunboxing$(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IIII)V

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    if-ne v10, v11, :cond_8

    goto :goto_3

    :cond_7
    if-eqz v7, :cond_9

    if-eqz v2, :cond_9

    iget v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    iget v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    const/4 v4, 0x2

    move-object v2, p0

    move-object v3, v1

    move v6, v12

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/util/ListenerSet;->measure$enumunboxing$(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IIII)V

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    if-ne v8, v11, :cond_8

    :goto_3
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    goto :goto_5

    :cond_8
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    :goto_4
    iput-boolean v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    :cond_9
    :goto_5
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baselineDimension:Landroidx/constraintlayout/core/widgets/analyzer/BaselineDimensionDependency;

    if-eqz v2, :cond_0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->verifyCurrentThread()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/AbstractCollection;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet;->queuedEvents:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    new-instance v1, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final release()V
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->verifyCurrentThread()V

    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->releasedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/media3/common/util/ListenerSet;->released:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/AbstractCollection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    iget-object v3, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedEvent:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    iput-boolean v1, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->released:Z

    iget-boolean v4, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    iget-object v4, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->flagsBuilder:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v4}, Landroidx/media3/common/FlagSet$Builder;->build()Landroidx/media3/common/FlagSet;

    move-result-object v4

    iget-object v2, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-interface {v3, v2, v4}, Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;->invoke(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/AbstractCollection;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final verifyCurrentThread()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/common/util/ListenerSet;->throwsWhenUsingWrongThread:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet;->handler:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/util/HandlerWrapper;

    check-cast p0, Landroidx/media3/common/util/SystemHandlerWrapper;

    iget-object p0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-ne v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    return-void
.end method
