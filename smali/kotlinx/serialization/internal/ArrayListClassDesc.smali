.class public final Lkotlinx/serialization/internal/ArrayListClassDesc;
.super Lkotlinx/serialization/internal/ListLikeDescriptor;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1

    const-string v0, "elementDesc"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/ListLikeDescriptor;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method


# virtual methods
.method public final getSerialName()Ljava/lang/String;
    .locals 0

    const-string p0, "kotlin.collections.ArrayList"

    return-object p0
.end method
