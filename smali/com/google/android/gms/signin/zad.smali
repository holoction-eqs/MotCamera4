.class public abstract Lcom/google/android/gms/signin/zad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zac:Lcom/google/android/gms/signin/zaa;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/signin/zaa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/signin/zaa;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/signin/zad;->zac:Lcom/google/android/gms/signin/zaa;

    new-instance v0, Lcom/google/android/gms/signin/zaa;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/signin/zaa;-><init>(I)V

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "profile"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "email"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    return-void
.end method
