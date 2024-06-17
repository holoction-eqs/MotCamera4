.class public final Lkotlin/sequences/GeneratorSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field public final synthetic $r8$classId:I

.field public final getInitialValue:Ljava/lang/Object;

.field public final getNextValue:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/sequences/GeneratorSequence;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/GeneratorSequence;->getInitialValue:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/sequences/GeneratorSequence;->getNextValue:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(Lkotlin/sequences/Sequence;)V
    .locals 2

    .line 2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$1;

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lkotlin/sequences/GeneratorSequence;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/GeneratorSequence;->getInitialValue:Ljava/lang/Object;

    iput-object v0, p0, Lkotlin/sequences/GeneratorSequence;->getNextValue:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget v0, p0, Lkotlin/sequences/GeneratorSequence;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lkotlin/sequences/GeneratorSequence$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/sequences/GeneratorSequence$iterator$1;-><init>(Lkotlin/sequences/GeneratorSequence;)V

    return-object v0

    :goto_0
    new-instance v0, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/GeneratorSequence;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
