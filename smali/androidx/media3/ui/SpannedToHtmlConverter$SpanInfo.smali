.class public final Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FOR_CLOSING_TAGS:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

.field public static final FOR_OPENING_TAGS:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;


# instance fields
.field public final closingTag:Ljava/lang/String;

.field public final end:I

.field public final openingTag:Ljava/lang/String;

.field public final start:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->FOR_OPENING_TAGS:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->FOR_CLOSING_TAGS:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->start:I

    iput p2, p0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->end:I

    iput-object p3, p0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    iput-object p4, p0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    return-void
.end method
