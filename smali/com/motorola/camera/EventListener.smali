.class public interface abstract Lcom/motorola/camera/EventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ActivityStarter;


# virtual methods
.method public abstract dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
.end method

.method public abstract getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;
.end method

.method public abstract getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;
.end method

.method public abstract getUiContext()Landroid/content/Context;
.end method

.method public abstract isCliDisplay()Z
.end method

.method public abstract isSplitScreen()Z
.end method

.method public abstract onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
.end method

.method public abstract playHaptic(I)V
.end method

.method public abstract registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V
.end method

.method public abstract registerStateChangeListener(Ljava/util/Collection;)V
.end method

.method public abstract unregisterStateChangeListener(Ljava/util/Collection;)V
.end method
