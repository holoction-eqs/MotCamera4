.class public final Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;
.super Lcom/google/android/material/shape/CornerTreatment;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:L_COROUTINE/_BOUNDARY;

.field public final synthetic val$expectedValuesPerKey:I


# direct methods
.method public constructor <init>(L_COROUTINE/_BOUNDARY;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;->this$0:L_COROUTINE/_BOUNDARY;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;->val$expectedValuesPerKey:I

    invoke-direct {p0}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/common/collect/Multimaps$CustomListMultimap;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;->this$0:L_COROUTINE/_BOUNDARY;

    invoke-virtual {v0}, L_COROUTINE/_BOUNDARY;->createMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;

    iget p0, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;->val$expectedValuesPerKey:I

    invoke-direct {v1, p0}, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;-><init>(I)V

    new-instance p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/Multimaps$CustomListMultimap;-><init>(Ljava/util/Map;Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;)V

    return-object p0
.end method
