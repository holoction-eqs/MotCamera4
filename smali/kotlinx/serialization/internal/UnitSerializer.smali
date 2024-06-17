.class public final Lkotlinx/serialization/internal/UnitSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/UnitSerializer;


# instance fields
.field public final synthetic $$delegate_0:Lkotlinx/serialization/internal/EnumSerializer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/UnitSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/UnitSerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/UnitSerializer;->INSTANCE:Lkotlinx/serialization/internal/UnitSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/internal/UnitSerializer;->$$delegate_0:Lkotlinx/serialization/internal/EnumSerializer;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/UnitSerializer;->$$delegate_0:Lkotlinx/serialization/internal/EnumSerializer;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/EnumSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/UnitSerializer;->$$delegate_0:Lkotlinx/serialization/internal/EnumSerializer;

    invoke-virtual {p0}, Lkotlinx/serialization/internal/EnumSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lkotlin/Unit;

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/UnitSerializer;->$$delegate_0:Lkotlinx/serialization/internal/EnumSerializer;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/EnumSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    return-void
.end method
