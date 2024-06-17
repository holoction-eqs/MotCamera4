.class public final enum Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$2;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const/4 v1, 0x3

    const-string v2, "GROUP"

    const/16 v3, 0x9

    invoke-direct {p0, v2, v3, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    return-void
.end method


# virtual methods
.method public final isPackable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
