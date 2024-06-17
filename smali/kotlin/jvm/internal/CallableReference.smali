.class public abstract Lkotlin/jvm/internal/CallableReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/KCallable;
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final isTopLevel:Z

.field public final name:Ljava/lang/String;

.field public final owner:Ljava/lang/Class;

.field public final receiver:Ljava/lang/Object;

.field public transient reflected:Lkotlin/reflect/KCallable;

.field public final signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/jvm/internal/CallableReference;->owner:Ljava/lang/Class;

    iput-object p3, p0, Lkotlin/jvm/internal/CallableReference;->name:Ljava/lang/String;

    iput-object p4, p0, Lkotlin/jvm/internal/CallableReference;->signature:Ljava/lang/String;

    iput-boolean p5, p0, Lkotlin/jvm/internal/CallableReference;->isTopLevel:Z

    return-void
.end method


# virtual methods
.method public abstract computeReflected()Lkotlin/reflect/KCallable;
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 2

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->owner:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lkotlin/jvm/internal/CallableReference;->isTopLevel:Z

    if-eqz p0, :cond_1

    sget-object p0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->signature:Ljava/lang/String;

    return-object p0
.end method
