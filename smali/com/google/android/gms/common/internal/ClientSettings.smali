.class public final Lcom/google/android/gms/common/internal/ClientSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zaa:Landroid/accounts/Account;

.field public final zab:Ljava/util/Set;

.field public final zac:Ljava/util/Set;

.field public final zag:Ljava/lang/String;

.field public final zah:Ljava/lang/String;

.field public final zai:Lcom/google/android/gms/signin/SignInOptions;

.field public zaj:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Landroidx/collection/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/SignInOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaa:Landroid/accounts/Account;

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zab:Ljava/util/Set;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    iput-object p3, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zag:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zah:Ljava/lang/String;

    if-nez p5, :cond_1

    sget-object p5, Lcom/google/android/gms/signin/SignInOptions;->zaa:Lcom/google/android/gms/signin/SignInOptions;

    :cond_1
    iput-object p5, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zai:Lcom/google/android/gms/signin/SignInOptions;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zac:Ljava/util/Set;

    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
