.class public final Lcom/motorola/camera/utility/search/BoundExtractedResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final referent:Ljava/lang/Object;

.field public final score:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/search/BoundExtractedResult;->referent:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/utility/search/BoundExtractedResult;->score:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/motorola/camera/utility/search/BoundExtractedResult;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/motorola/camera/utility/search/BoundExtractedResult;->score:I

    iget p1, p1, Lcom/motorola/camera/utility/search/BoundExtractedResult;->score:I

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->compare(II)I

    move-result p0

    return p0
.end method
