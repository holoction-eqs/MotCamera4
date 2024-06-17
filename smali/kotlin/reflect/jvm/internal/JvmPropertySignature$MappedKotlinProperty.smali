.class public final Lkotlin/reflect/jvm/internal/JvmPropertySignature$MappedKotlinProperty;
.super Lkotlin/reflect/jvm/internal/CacheByClass;
.source "SourceFile"


# instance fields
.field public final getterSignature:Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;

.field public final setterSignature:Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/CacheByClass;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/JvmPropertySignature$MappedKotlinProperty;->getterSignature:Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/JvmPropertySignature$MappedKotlinProperty;->setterSignature:Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;

    return-void
.end method


# virtual methods
.method public final asString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/JvmPropertySignature$MappedKotlinProperty;->getterSignature:Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;->_signature:Ljava/lang/String;

    return-object p0
.end method
