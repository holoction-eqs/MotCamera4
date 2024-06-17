.class public final Lcom/motorola/camera/saving/XmpData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mExtMetadata:Lcom/adobe/xmp/XMPMeta;

.field public mMetadata:Lcom/adobe/xmp/XMPMeta;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Landroidx/work/WorkQuery;

    const-string v1, "http://ns.google.com/photos/1.0/container/"

    const-string v2, "Container"

    invoke-virtual {v0, v1, v2}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "http://ns.google.com/photos/1.0/container/item/"

    const-string v2, "Item"

    invoke-virtual {v0, v1, v2}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v2, "GCamera"

    invoke-virtual {v0, v1, v2}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v2, "GDepth"

    invoke-virtual {v0, v1, v2}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "http://ns.google.com/photos/1.0/image/"

    const-string v2, "GImage"

    invoke-virtual {v0, v1, v2}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "http://ns.google.com/photos/1.0/panorama/"

    const-string v2, "GPano"

    invoke-virtual {v0, v1, v2}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "http://ns.motorola.com/camera/1.0/depthfocus/"

    const-string v2, "MotDepthFocus"

    invoke-virtual {v0, v1, v2}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "http://ns.motorola.com/camera/1.0/debuginfo/"

    const-string v2, "MotDebugInfo"

    invoke-virtual {v0, v1, v2}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "http://ns.google.com/photos/1.0/document/"

    const-string v2, "MotDocument"

    invoke-virtual {v0, v1, v2}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "XmpData"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    iput-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    return-void
.end method

.method public static createMotionPhotoItemDirectory(Lcom/adobe/xmp/XMPMeta;)V
    .locals 15

    check-cast p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "http://ns.google.com/photos/1.0/container/"

    invoke-static {v0}, Lcom/adobe/xmp/impl/Latin1Converter;->assertSchemaNS(Ljava/lang/String;)V

    const-string v1, "Directory"

    invoke-static {v1}, Lcom/adobe/xmp/impl/Latin1Converter;->assertArrayName(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroidx/media3/ui/HtmlUtils;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    const/16 v3, 0x66

    const-string v6, "The named property is not an array"

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    :goto_0
    if-nez v2, :cond_8

    new-instance v2, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v2}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    const/16 v7, 0x400

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    move v7, v4

    :goto_1
    const/4 v9, 0x2

    if-ge v7, v9, :cond_8

    new-instance v9, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v9}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    const/16 v10, 0x100

    invoke-virtual {v9, v10, v8}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    invoke-static {v0}, Lcom/adobe/xmp/impl/Latin1Converter;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/adobe/xmp/impl/Latin1Converter;->assertArrayName(Ljava/lang/String;)V

    iget v10, v2, Lcom/adobe/xmp/options/Options;->options:I

    and-int/lit16 v10, v10, -0x1e01

    if-nez v10, :cond_1

    move v10, v8

    goto :goto_2

    :cond_1
    move v10, v4

    :goto_2
    const/16 v11, 0x67

    if-eqz v10, :cond_7

    invoke-static {v2, v5}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v10

    invoke-static {v0, v1}, Landroidx/media3/ui/HtmlUtils;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v12

    iget-object v13, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-static {v13, v12, v4, v5}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_3

    :cond_2
    new-instance p0, Lcom/adobe/xmp/XMPException;

    invoke-direct {p0, v6, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    invoke-virtual {v10}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v13, v12, v8, v10}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v14

    if-eqz v14, :cond_5

    :goto_3
    new-instance v10, Lcom/adobe/xmp/impl/XMPNode;

    const-string v11, "[]"

    invoke-direct {v10, v11, v5, v5}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v11, ""

    invoke-static {v9, v11}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v9

    invoke-virtual {v14}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v12

    add-int/2addr v12, v8

    if-gt v8, v12, :cond_4

    invoke-virtual {v14, v12, v10}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    invoke-static {v10, v11, v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Array index out of bounds"

    const/16 v1, 0x68

    invoke-direct {p0, v0, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_5
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Failure creating array node"

    invoke-direct {p0, v0, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_6
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Explicit arrayOptions required to create new array"

    invoke-direct {p0, v0, v11}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_7
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Only array form flags allowed for arrayOptions"

    invoke-direct {p0, v0, v11}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_8
    return-void

    :cond_9
    new-instance p0, Lcom/adobe/xmp/XMPException;

    invoke-direct {p0, v6, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static embedMotionPhotoItem(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    check-cast p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const-string v0, "Semantic"

    invoke-virtual {p0, p1, v0, p2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Length"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p4}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Mime"

    invoke-virtual {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final add(Landroidx/work/WorkQuery;)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v0, :cond_0

    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Landroidx/work/WorkQuery;

    new-instance v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_0
    new-instance v0, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    iget-object v1, p1, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "http://ns.google.com/photos/1.0/camera/"

    if-eqz v3, :cond_1

    :try_start_1
    const-string v3, "SpecialTypeID"

    check-cast v1, Ljava/lang/String;

    move-object v5, p0

    check-cast v5, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v5, v4, v3, v1, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    :cond_1
    iget-object v1, p1, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v3, "BurstID"

    check-cast v1, Ljava/lang/String;

    move-object v5, p0

    check-cast v5, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v5, v4, v3, v1, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    :cond_2
    iget-object v1, p1, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    const-string v3, "BurstPrimary"

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v2, v4, v3, v1, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    :cond_4
    iget-object p1, p1, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    const-string v1, "IsAutoEnhanced"

    check-cast p1, Ljava/lang/Boolean;

    check-cast p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {p0, v4, v1, p1, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    return-void
.end method
