.class public final Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaMethod;
.super Lkotlin/reflect/jvm/internal/CacheByClass;
.source "SourceFile"


# instance fields
.field public final method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/CacheByClass;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaMethod;->method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final asString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaMethod;->method:Ljava/lang/reflect/Method;

    invoke-static {p0}, Lkotlin/UnsignedKt;->access$getSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
