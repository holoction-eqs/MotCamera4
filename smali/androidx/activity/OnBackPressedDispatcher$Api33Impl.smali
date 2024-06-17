.class public abstract Landroidx/activity/OnBackPressedDispatcher$Api33Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createOnBackInvokedCallback(Ljava/lang/Runnable;)Landroid/window/OnBackInvokedCallback;
    .locals 2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static registerOnBackInvokedCallback(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p0, Landroid/window/OnBackInvokedDispatcher;

    check-cast p2, Landroid/window/OnBackInvokedCallback;

    invoke-interface {p0, p1, p2}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public static unregisterOnBackInvokedCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Landroid/window/OnBackInvokedDispatcher;

    check-cast p1, Landroid/window/OnBackInvokedCallback;

    invoke-interface {p0, p1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method
