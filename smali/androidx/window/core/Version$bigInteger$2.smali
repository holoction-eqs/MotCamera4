.class public final Landroidx/window/core/Version$bigInteger$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/window/core/Version$bigInteger$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 1

    iget v0, p0, Landroidx/window/core/Version$bigInteger$2;->$r8$classId:I

    iget-object p0, p0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->KOTLIN_REFLECT_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getPackage(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/LazyPackageViewDescriptorImpl;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/LazyPackageViewDescriptorImpl;->memberScope:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/LazyScopeAdapter;

    return-object p0

    :goto_0
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;->scopeFactory:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;->kotlinTypeRefinerForOwnerModule:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke$1()V
    .locals 7

    iget v0, p0, Landroidx/window/core/Version$bigInteger$2;->$r8$classId:I

    iget-object p0, p0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->showTooltip()V

    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->showImpl()V

    return-void

    :pswitch_3
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->showImpl()V

    return-void

    :pswitch_4
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->showImpl()V

    return-void

    :pswitch_5
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    const v0, 0x7f0a042c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_6
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->dismiss()V

    return-void

    :pswitch_7
    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->PORTRAIT_LANDSCAPE_CLI:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;->animationContainer:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->getCliOrientation()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;->setOrientation(I)V

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;->animationPlayerView:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    if-eqz v3, :cond_4

    invoke-virtual {v1, v2}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/16 v2, 0x5a

    int-to-float v2, v2

    iget v4, v3, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->videoSize:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    invoke-virtual {v1, v2, v6, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    int-to-float v0, v0

    div-float v2, v0, v4

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    div-float/2addr v0, v5

    sub-float/2addr v6, v0

    invoke-virtual {v1, v6, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v3, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_2
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    iget-object v1, v3, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    const-string v4, "cli_animation/cli_default_animation_square.mp4"

    invoke-direct {v0, v2, v3, v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v2, Landroidx/lifecycle/Transformations$map$1;

    const/4 v4, 0x4

    invoke-direct {v2, v4, v1, v3}, Landroidx/lifecycle/Transformations$map$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    iput-object v0, v3, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->prepareStartFuture:Ljava/util/concurrent/CompletableFuture;

    const-string v1, "prepareStartFuture"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    new-instance v1, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v2, 0x1a

    invoke-direct {v1, p0, v2}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    :cond_4
    return-void

    :pswitch_8
    check-cast p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliPresentationHolder;->getCurrentPresentation()Lcom/motorola/camera/arch/view/BasePresentation;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->presentationDeque:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    return-void

    :pswitch_9
    check-cast p0, Lcom/motorola/camera/cli/content/CliContentViewModel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/cli/content/CliContentViewModel;->close(Z)V

    return-void

    :goto_2
    check-cast p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final invoke$2()Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/window/core/Version$bigInteger$2;->$r8$classId:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    iget-object v0, v0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->settingsComputation:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Settings;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->settingsComputation:Lkotlin/jvm/functions/Function0;

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "JvmBuiltins instance has not been initialized properly"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroidx/window/core/Version$bigInteger$2;->invoke()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, v0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, [Z

    if-eqz v4, :cond_1

    check-cast v2, [Z

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v2

    goto :goto_1

    :cond_1
    instance-of v4, v2, [C

    if-eqz v4, :cond_2

    check-cast v2, [C

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([C)I

    move-result v2

    goto :goto_1

    :cond_2
    instance-of v4, v2, [B

    if-eqz v4, :cond_3

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    goto :goto_1

    :cond_3
    instance-of v4, v2, [S

    if-eqz v4, :cond_4

    check-cast v2, [S

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([S)I

    move-result v2

    goto :goto_1

    :cond_4
    instance-of v4, v2, [I

    if-eqz v4, :cond_5

    check-cast v2, [I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    goto :goto_1

    :cond_5
    instance-of v4, v2, [F

    if-eqz v4, :cond_6

    check-cast v2, [F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    goto :goto_1

    :cond_6
    instance-of v4, v2, [J

    if-eqz v4, :cond_7

    check-cast v2, [J

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    goto :goto_1

    :cond_7
    instance-of v4, v2, [D

    if-eqz v4, :cond_8

    check-cast v2, [D

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([D)I

    move-result v2

    goto :goto_1

    :cond_8
    instance-of v4, v2, [Ljava/lang/Object;

    if-eqz v4, :cond_9

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    goto :goto_1

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    mul-int/lit8 v3, v3, 0x7f

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, v0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;->descriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    const-string v1, "descriptor.upperBounds"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    new-instance v4, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-direct {v4, v3, v2}, Lkotlin/reflect/jvm/internal/KTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    return-object v1

    :pswitch_4
    new-instance v1, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl$Setter;

    iget-object v0, v0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl$Setter;-><init>(Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;)V

    return-object v1

    :pswitch_5
    new-instance v1, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;

    iget-object v0, v0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;-><init>(Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;)V

    return-object v1

    :pswitch_6
    new-instance v1, Lkotlin/reflect/jvm/internal/KMutableProperty0Impl$Setter;

    iget-object v0, v0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/KMutableProperty0Impl$Setter;-><init>(Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;)V

    return-object v1

    :pswitch_7
    iget-object v0, v0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-interface {v0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ModuleByClassLoaderKt;->getOrCreateModule(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;

    move-result-object v0

    return-object v0

    :pswitch_8
    iget-object v0, v0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_9
    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/text/StringsKt__IndentKt;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object v0

    goto :goto_4

    :goto_3
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    return-object v0

    :pswitch_a
    iget-object v0, v0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_2

    goto :goto_5

    :pswitch_b
    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/text/StringsKt__IndentKt;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object v0

    goto :goto_6

    :goto_5
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    return-object v0

    :pswitch_c
    iget-object v0, v0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/utility/InAppUpdateUtils;

    iget-object v0, v0, Lcom/motorola/camera/utility/InAppUpdateUtils;->appContext:Landroid/content/Context;

    const-class v1, Lcom/google/android/play/core/appupdate/zzb;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/play/core/appupdate/zzb;->zza:Landroidx/appcompat/widget/TooltipPopup;

    if-nez v2, :cond_d

    new-instance v2, Lcom/google/android/play/core/appupdate/zzi;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_c

    move-object v0, v3

    :cond_c
    invoke-direct {v2, v0}, Lcom/google/android/play/core/appupdate/zzi;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroidx/appcompat/widget/TooltipPopup;

    invoke-direct {v0, v2}, Landroidx/appcompat/widget/TooltipPopup;-><init>(Lcom/google/android/play/core/appupdate/zzi;)V

    sput-object v0, Lcom/google/android/play/core/appupdate/zzb;->zza:Landroidx/appcompat/widget/TooltipPopup;

    :cond_d
    sget-object v0, Lcom/google/android/play/core/appupdate/zzb;->zza:Landroidx/appcompat/widget/TooltipPopup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/appupdate/internal/zzaf;

    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/internal/zzaf;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/appupdate/zzg;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroidx/window/core/Version$bigInteger$2;->invoke$1()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    iget-object v0, v0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;->getCutoutsCoordinates()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroidx/window/core/Version$bigInteger$2;->invoke$1()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroidx/window/core/Version$bigInteger$2;->invoke$1()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Landroidx/window/core/Version$bigInteger$2;->invoke$1()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Landroidx/window/core/Version$bigInteger$2;->invoke$1()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Landroidx/window/core/Version$bigInteger$2;->invoke$1()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    iget-object v0, v0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$SingleImageViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    return-object v0

    :pswitch_15
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->LISTENED_VISIBILITY_NOTIFIERS:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v0, v0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->otherComponentsVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;-><init>(Ljava/util/List;Ljava/lang/ref/WeakReference;)V

    return-object v1

    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Landroidx/window/core/Version$bigInteger$2;->invoke$1()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    iget-object v0, v0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    const v1, 0x7f0a0318

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0

    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Landroidx/window/core/Version$bigInteger$2;->invoke$1()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Landroidx/window/core/Version$bigInteger$2;->invoke$1()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroidx/window/core/Version$bigInteger$2;->invoke$1()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_1b
    iget-object v0, v0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    iget-object v1, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    const/16 v3, 0x8

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->useNoBackupDirectory:Z

    if-eqz v1, :cond_e

    new-instance v1, Ljava/io/File;

    iget-object v4, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "context.noBackupFilesDir"

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    iget-object v7, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lkotlin/DeepRecursiveFunction;

    invoke-direct {v9, v2, v3}, Lkotlin/DeepRecursiveFunction;-><init>(Ljava/lang/Object;I)V

    iget-object v10, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    iget-boolean v11, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->allowDataLossOnRecovery:Z

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/DeepRecursiveFunction;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Z)V

    goto :goto_7

    :cond_e
    new-instance v4, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    iget-object v13, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    iget-object v14, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    new-instance v15, Lkotlin/DeepRecursiveFunction;

    invoke-direct {v15, v2, v3}, Lkotlin/DeepRecursiveFunction;-><init>(Ljava/lang/Object;I)V

    iget-object v1, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    iget-boolean v2, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->allowDataLossOnRecovery:Z

    move-object v12, v4

    move-object/from16 v16, v1

    move/from16 v17, v2

    invoke-direct/range {v12 .. v17}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/DeepRecursiveFunction;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Z)V

    :goto_7
    iget-boolean v0, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->writeAheadLoggingEnabled:Z

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-object v4

    :pswitch_1c
    iget-object v0, v0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/MapCollections;

    invoke-virtual {v0}, Landroidx/collection/MapCollections;->createNewStatement()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    return-object v0

    :pswitch_1d
    iget-object v0, v0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-static {v0}, Landroidx/lifecycle/SavedStateHandleSupport;->getSavedStateHandlesVM(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/SavedStateHandlesVM;

    move-result-object v0

    return-object v0

    :pswitch_1e
    iget-object v0, v0, Landroidx/window/core/Version$bigInteger$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/window/core/Version;

    iget v1, v0, Landroidx/window/core/Version;->major:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    iget v3, v0, Landroidx/window/core/Version;->minor:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    iget v0, v0, Landroidx/window/core/Version;->patch:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/window/core/Version$bigInteger$2;->invoke()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x13
        :pswitch_b
    .end packed-switch
.end method
