.class public Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;
.super Lcom/google/android/material/behavior/SwipeDismissBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/behavior/SwipeDismissBehavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public final delegate:Lcom/google/gson/FieldAttributes;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;-><init>()V

    new-instance v0, Lcom/google/gson/FieldAttributes;

    invoke-direct {v0, p0}, Lcom/google/gson/FieldAttributes;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->delegate:Lcom/google/gson/FieldAttributes;

    return-void
.end method


# virtual methods
.method public final canSwipeDismissView(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->delegate:Lcom/google/gson/FieldAttributes;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    return p0
.end method

.method public final onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->delegate:Lcom/google/gson/FieldAttributes;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/work/WorkQuery;->snackbarManager:Landroidx/work/WorkQuery;

    if-nez v1, :cond_1

    new-instance v1, Landroidx/work/WorkQuery;

    invoke-direct {v1, v2}, Landroidx/work/WorkQuery;-><init>(I)V

    sput-object v1, Landroidx/work/WorkQuery;->snackbarManager:Landroidx/work/WorkQuery;

    :cond_1
    sget-object v1, Landroidx/work/WorkQuery;->snackbarManager:Landroidx/work/WorkQuery;

    iget-object v0, v0, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    iget-object v3, v1, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, p2, v1, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroidx/work/WorkQuery;->snackbarManager:Landroidx/work/WorkQuery;

    if-nez v1, :cond_3

    new-instance v1, Landroidx/work/WorkQuery;

    invoke-direct {v1, v2}, Landroidx/work/WorkQuery;-><init>(I)V

    sput-object v1, Landroidx/work/WorkQuery;->snackbarManager:Landroidx/work/WorkQuery;

    :cond_3
    sget-object v1, Landroidx/work/WorkQuery;->snackbarManager:Landroidx/work/WorkQuery;

    iget-object v0, v0, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    iget-object v0, v1, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, v1, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    invoke-static {v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_4
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
