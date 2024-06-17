.class public final Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final extensionsByNumber:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final add(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;

    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;->containingTypeDefaultInstance:Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget v2, v2, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;I)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
