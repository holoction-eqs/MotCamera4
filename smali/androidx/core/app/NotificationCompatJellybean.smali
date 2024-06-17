.class public abstract Landroidx/core/app/NotificationCompatJellybean;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sExtrasLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    return-void
.end method

.method public static toBundleArray([Landroidx/tracing/Trace;)[Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    new-array v1, v1, [Landroid/os/Bundle;

    array-length v2, p0

    if-gtz v2, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget-object p0, p0, v1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    throw v0
.end method
