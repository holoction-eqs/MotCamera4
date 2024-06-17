.class public final Lcom/google/android/gms/common/api/internal/zact;
.super Lcom/google/android/gms/signin/internal/zac;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field public static final zaa:Lcom/google/android/gms/signin/zaa;


# instance fields
.field public final zab:Landroid/content/Context;

.field public final zac:Landroid/os/Handler;

.field public final zad:Lcom/google/android/gms/signin/zaa;

.field public final zae:Ljava/util/Set;

.field public final zaf:Lcom/google/android/gms/common/internal/ClientSettings;

.field public zag:Lcom/google/android/gms/signin/zae;

.field public zah:Lcom/google/android/gms/common/api/internal/zabu;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/signin/zad;->zac:Lcom/google/android/gms/signin/zaa;

    sput-object v0, Lcom/google/android/gms/common/api/internal/zact;->zaa:Lcom/google/android/gms/signin/zaa;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/base/zau;Lcom/google/android/gms/common/internal/ClientSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zac;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zact;->zab:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zact;->zac:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zact;->zaf:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object p1, p3, Lcom/google/android/gms/common/internal/ClientSettings;->zab:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zact;->zae:Ljava/util/Set;

    sget-object p1, Lcom/google/android/gms/common/api/internal/zact;->zaa:Lcom/google/android/gms/signin/zaa;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zact;->zad:Lcom/google/android/gms/signin/zaa;

    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    invoke-interface {v0, p0}, Lcom/google/android/gms/signin/zae;->zad(Lcom/google/android/gms/signin/internal/zae;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zabu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabu;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    return-void
.end method
