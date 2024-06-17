.class public final Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;
.super Lcom/google/common/collect/ComparisonChain;
.source "SourceFile"


# instance fields
.field public final result:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ComparisonChain;-><init>()V

    iput p1, p0, Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;->result:I

    return-void
.end method


# virtual methods
.method public final compare(II)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    return-object p0
.end method

.method public final compareTrueFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    return-object p0
.end method

.method public final result()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;->result:I

    return p0
.end method
