.class public abstract Lkotlinx/serialization/modules/SerializersModuleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EmptySerializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/modules/SerialModuleImpl;

    invoke-direct {v0}, Lkotlinx/serialization/modules/SerialModuleImpl;-><init>()V

    sput-object v0, Lkotlinx/serialization/modules/SerializersModuleKt;->EmptySerializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    return-void
.end method
