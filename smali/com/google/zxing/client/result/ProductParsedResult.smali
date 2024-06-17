.class public final Lcom/google/zxing/client/result/ProductParsedResult;
.super Landroidx/transition/ViewOverlayApi14;
.source "SourceFile"


# instance fields
.field public final normalizedProductID:Ljava/lang/String;

.field public final productID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroidx/transition/ViewOverlayApi14;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/google/zxing/client/result/ProductParsedResult;->productID:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/zxing/client/result/ProductParsedResult;->normalizedProductID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDisplayResult()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/ProductParsedResult;->productID:Ljava/lang/String;

    return-object p0
.end method
