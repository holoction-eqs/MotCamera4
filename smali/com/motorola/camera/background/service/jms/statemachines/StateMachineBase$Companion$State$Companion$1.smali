.class public final Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Companion$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Companion$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Companion$1;

    invoke-direct {v0}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Companion$1;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Companion$1;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Companion$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 4

    new-instance p0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlin/reflect/KClass;

    new-array v3, v1, [Lkotlinx/serialization/KSerializer;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v0, v2, v3, v1}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object p0
.end method
