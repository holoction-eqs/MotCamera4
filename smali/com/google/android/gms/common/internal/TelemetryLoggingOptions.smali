.class public final Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions;


# static fields
.field public static final zaa:Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;


# instance fields
.field public final zab:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/OpReorderer;

    invoke-direct {v0}, Landroidx/recyclerview/widget/OpReorderer;-><init>()V

    new-instance v1, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    iget-object v0, v0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;->zaa:Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;->zab:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;->zab:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;->zab:Ljava/lang/String;

    invoke-static {p0, p1}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;->zab:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
