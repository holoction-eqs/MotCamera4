.class public final Lcom/google/android/gms/common/api/internal/zam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zaa:I

.field public final zab:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zam;->zab:Lcom/google/android/gms/common/ConnectionResult;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/zam;->zaa:I

    return-void
.end method
