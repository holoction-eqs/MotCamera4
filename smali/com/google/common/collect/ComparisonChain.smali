.class public abstract Lcom/google/common/collect/ComparisonChain;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTIVE:Lcom/google/common/collect/ComparisonChain$1;

.field public static final GREATER:Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;

.field public static final LESS:Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/collect/ComparisonChain$1;

    invoke-direct {v0}, Lcom/google/common/collect/ComparisonChain$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/ComparisonChain;->ACTIVE:Lcom/google/common/collect/ComparisonChain$1;

    new-instance v0, Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/ComparisonChain;->LESS:Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;

    new-instance v0, Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/ComparisonChain;->GREATER:Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;

    return-void
.end method


# virtual methods
.method public abstract compare(II)Lcom/google/common/collect/ComparisonChain;
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;
.end method

.method public abstract compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
.end method

.method public abstract compareTrueFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
.end method

.method public abstract result()I
.end method
