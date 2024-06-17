.class public final Lcom/google/common/collect/Multimaps$CustomListMultimap;
.super Lcom/google/common/collect/AbstractListMultimap;
.source "SourceFile"


# instance fields
.field public final transient factory:Lcom/google/common/base/Supplier;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractListMultimap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->factory:Lcom/google/common/base/Supplier;

    return-void
.end method
