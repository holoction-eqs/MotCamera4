.class public final Lcom/adobe/xmp/impl/QName;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final localName:Ljava/lang/String;

.field public final prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/motorola/camera/mcf/MotUtil;->Base64Encode([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/adobe/xmp/impl/QName;->prefix:Ljava/lang/String;

    iput-object p1, p0, Lcom/adobe/xmp/impl/QName;->localName:Ljava/lang/String;

    return-void
.end method
