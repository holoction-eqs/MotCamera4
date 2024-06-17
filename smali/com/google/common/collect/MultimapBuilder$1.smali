.class public final Lcom/google/common/collect/MultimapBuilder$1;
.super L_COROUTINE/_BOUNDARY;
.source "SourceFile"


# instance fields
.field public final synthetic val$expectedKeys:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/google/common/collect/MultimapBuilder$1;->val$expectedKeys:I

    invoke-direct {p0}, L_COROUTINE/_BOUNDARY;-><init>()V

    return-void
.end method


# virtual methods
.method public final createMap()Ljava/util/Map;
    .locals 1

    new-instance v0, Lcom/google/common/collect/CompactHashMap;

    iget p0, p0, Lcom/google/common/collect/MultimapBuilder$1;->val$expectedKeys:I

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap;-><init>(I)V

    return-object v0
.end method
