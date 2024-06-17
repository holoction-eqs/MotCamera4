.class public final Lcom/google/common/collect/MultimapBuilder$3;
.super L_COROUTINE/_BOUNDARY;
.source "SourceFile"


# instance fields
.field public final synthetic val$comparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/NaturalOrdering;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/MultimapBuilder$3;->val$comparator:Ljava/util/Comparator;

    invoke-direct {p0}, L_COROUTINE/_BOUNDARY;-><init>()V

    return-void
.end method


# virtual methods
.method public final createMap()Ljava/util/Map;
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    iget-object p0, p0, Lcom/google/common/collect/MultimapBuilder$3;->val$comparator:Ljava/util/Comparator;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
