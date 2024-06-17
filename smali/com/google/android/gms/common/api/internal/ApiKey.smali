.class public final Lcom/google/android/gms/common/api/internal/ApiKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zaa:I

.field public final zab:Landroidx/core/view/MenuHostHelper;

.field public final zac:Lcom/google/android/gms/common/api/Api$ApiOptions;

.field public final zad:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/core/view/MenuHostHelper;Lcom/google/android/gms/common/api/Api$ApiOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ApiKey;->zab:Landroidx/core/view/MenuHostHelper;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/ApiKey;->zac:Lcom/google/android/gms/common/api/Api$ApiOptions;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/ApiKey;->zad:Ljava/lang/String;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/api/internal/ApiKey;->zaa:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/common/api/internal/ApiKey;

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lcom/google/android/gms/common/api/internal/ApiKey;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/ApiKey;->zab:Landroidx/core/view/MenuHostHelper;

    iget-object v3, p1, Lcom/google/android/gms/common/api/internal/ApiKey;->zab:Landroidx/core/view/MenuHostHelper;

    invoke-static {v2, v3}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/ApiKey;->zac:Lcom/google/android/gms/common/api/Api$ApiOptions;

    iget-object v3, p1, Lcom/google/android/gms/common/api/internal/ApiKey;->zac:Lcom/google/android/gms/common/api/Api$ApiOptions;

    invoke-static {v2, v3}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/ApiKey;->zad:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/ApiKey;->zad:Ljava/lang/String;

    invoke-static {p0, p1}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/api/internal/ApiKey;->zaa:I

    return p0
.end method
