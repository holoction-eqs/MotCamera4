.class public abstract Landroidx/media3/ui/HtmlUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$Loadable;


# static fields
.field public static final flags:[Z

.field public static zza:Lcom/google/android/gms/internal/mlkit_common/zzpx;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Landroidx/media3/ui/HtmlUtils;->flags:[Z

    return-void
.end method

.method public static checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 8

    const/4 v0, -0x1

    iput v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    iput v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    iget-object v4, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    if-eq v0, v2, :cond_0

    aget v0, v4, v1

    if-ne v0, v3, :cond_0

    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    iget-object v6, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v5, v7

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v7

    iput-object v7, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v7

    iput-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    iget-object v0, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p1, v0, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    iput v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    iput v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    sub-int/2addr v5, v1

    iput v5, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    iget v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v5, v0, :cond_0

    iput v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eq v0, v2, :cond_3

    aget v0, v4, v1

    if-ne v0, v3, :cond_3

    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result p0

    iget-object v3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr p0, v4

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    iput-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    iget-object v0, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p1, v0, p0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    iget v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v0, :cond_1

    iget v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    :cond_1
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v3

    iput-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v3, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    :cond_2
    iput v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    iput v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    sub-int/2addr p0, v1

    iput p0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    iget p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    if-ge p0, p1, :cond_3

    iput p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    :cond_3
    return-void
.end method

.method public static final defaultCreationExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 1

    const-string v0, "owner"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_0
    return-object p0
.end method

.method public static final enabled(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    if-eqz v0, :cond_20

    if-eqz v1, :cond_20

    new-instance v3, Lcom/adobe/xmp/impl/xpath/XMPPath;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>(I)V

    move v5, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "/[*"

    if-ge v5, v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/16 v6, 0x66

    if-eqz v5, :cond_1f

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroidx/media3/ui/HtmlUtils;->verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/adobe/xmp/XMPMetaFactory;->schema:Landroidx/work/WorkQuery;

    monitor-enter v9

    :try_start_0
    iget-object v10, v9, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    const/4 v9, 0x5

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/high16 v13, -0x80000000

    if-nez v10, :cond_1

    new-instance v10, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v10, v0, v13}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v10}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v0, v8, v12}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    iget-object v8, v10, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;->val$actualNS:Ljava/lang/String;

    invoke-direct {v0, v8, v13}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    iget-object v13, v10, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;->val$actualProp:Ljava/lang/String;

    invoke-static {v8, v13}, Landroidx/media3/ui/HtmlUtils;->verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8, v12}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    iput-boolean v12, v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->alias:Z

    iget-object v8, v10, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;->val$aliasOpts:Lcom/adobe/xmp/options/AliasOptions;

    iget v10, v8, Lcom/adobe/xmp/options/Options;->options:I

    iput v10, v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->aliasForm:I

    invoke-virtual {v3, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    const/16 v0, 0x1000

    invoke-virtual {v8, v0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const-string v10, "[?xml:lang=\'x-default\']"

    invoke-direct {v0, v10, v9}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x200

    invoke-virtual {v8, v0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const-string v10, "[1]"

    invoke-direct {v0, v10, v11}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    :goto_1
    iput-boolean v12, v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->alias:Z

    iget v8, v8, Lcom/adobe/xmp/options/Options;->options:I

    iput v8, v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->aliasForm:I

    :goto_2
    invoke-virtual {v3, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    :cond_3
    move v0, v4

    move v8, v0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_1e

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const-string v13, "Empty XMPPath segment"

    const/16 v14, 0x2f

    if-ne v10, v14, :cond_5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_4

    goto :goto_4

    :cond_4
    new-instance v0, Lcom/adobe/xmp/XMPException;

    invoke-direct {v0, v13, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    :goto_4
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v14, 0x2a

    const/16 v15, 0x5b

    if-ne v10, v14, :cond_7

    add-int/lit8 v5, v5, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_6

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v15, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Missing \'[\' after \'*\'"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    :goto_5
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v15, :cond_a

    move v0, v5

    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    if-eq v0, v5, :cond_9

    new-instance v8, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v12}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    move v4, v0

    goto/16 :goto_d

    :cond_9
    new-instance v0, Lcom/adobe/xmp/XMPException;

    invoke-direct {v0, v13, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_a
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/4 v15, 0x0

    const/16 v9, 0x5d

    const/16 v4, 0x30

    if-gt v4, v13, :cond_c

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x39

    if-gt v13, v14, :cond_c

    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v10, v13, :cond_b

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-gt v4, v13, :cond_b

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-gt v13, v14, :cond_b

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_b
    new-instance v4, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v4, v15, v11}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    goto :goto_9

    :cond_c
    move v4, v10

    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_d

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v9, :cond_d

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x3d

    if-eq v13, v14, :cond_d

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_1d

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v9, :cond_f

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v13, "[last()"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    new-instance v10, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v10, v15, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    move-object/from16 v16, v10

    move v10, v4

    move-object/from16 v4, v16

    :goto_9
    move/from16 v16, v8

    move-object v8, v4

    move v4, v10

    move/from16 v10, v16

    goto :goto_c

    :cond_e
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid non-numeric array index"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_f
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v13, 0x27

    if-eq v8, v13, :cond_11

    const/16 v13, 0x22

    if-ne v8, v13, :cond_10

    goto :goto_a

    :cond_10
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid quote in array selector"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_11
    :goto_a
    add-int/2addr v0, v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v0, v13, :cond_13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v8, :cond_11

    add-int/lit8 v13, v0, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_13

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v8, :cond_12

    goto :goto_b

    :cond_12
    move v0, v13

    goto :goto_a

    :cond_13
    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_1c

    add-int/lit8 v0, v0, 0x1

    new-instance v8, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const/4 v13, 0x6

    invoke-direct {v8, v15, v13}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    move/from16 v16, v4

    move v4, v0

    move/from16 v0, v16

    :goto_c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_1b

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v9, :cond_1b

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    move v5, v10

    :goto_d
    iget v9, v8, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->kind:I

    const-string v10, "Only xml:lang allowed with \'@\'"

    const/4 v13, 0x2

    const/16 v14, 0x3f

    const/16 v15, 0x40

    if-ne v9, v12, :cond_17

    iget-object v9, v8, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v15, :cond_15

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "?"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v8, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    const-string v11, "?xml:lang"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    goto :goto_e

    :cond_14
    new-instance v0, Lcom/adobe/xmp/XMPException;

    invoke-direct {v0, v10, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_15
    :goto_e
    iget-object v9, v8, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v14, :cond_16

    add-int/lit8 v5, v5, 0x1

    iput v13, v8, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->kind:I

    :cond_16
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroidx/media3/ui/HtmlUtils;->verifyQualName(Ljava/lang/String;)V

    goto :goto_10

    :cond_17
    const/4 v11, 0x6

    if-ne v9, v11, :cond_1a

    iget-object v9, v8, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v15, :cond_19

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "[?"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v8, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    const-string v11, "[?xml:lang="

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    goto :goto_f

    :cond_18
    new-instance v0, Lcom/adobe/xmp/XMPException;

    invoke-direct {v0, v10, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_19
    :goto_f
    iget-object v9, v8, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v14, :cond_1a

    add-int/lit8 v5, v5, 0x1

    const/4 v9, 0x5

    iput v9, v8, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->kind:I

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroidx/media3/ui/HtmlUtils;->verifyQualName(Ljava/lang/String;)V

    goto :goto_11

    :cond_1a
    :goto_10
    const/4 v9, 0x5

    :goto_11
    invoke-virtual {v3, v8}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    move v8, v5

    const/4 v11, 0x3

    move v5, v4

    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_1b
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Missing \']\' for array index"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1c
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "No terminating quote for array selector"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1d
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Missing \']\' or \'=\' for array index"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1e
    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_1f
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty initial XMPPath step"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_20
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Parameter must not be null"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;
    .locals 7

    if-nez p1, :cond_0

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-eqz p3, :cond_1

    iget v3, p3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    if-eq v0, v3, :cond_4

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    iget v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    if-ne v5, v0, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->moveTo(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    move-object p3, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eq v0, v2, :cond_5

    return-object p3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    if-nez p3, :cond_c

    instance-of v3, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;

    if-eqz v3, :cond_a

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/core/widgets/HelperWidget;

    move v4, v1

    :goto_3
    iget v5, v3, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v4, v5, :cond_8

    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v5, v5, v4

    if-nez p1, :cond_6

    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    if-eq v6, v2, :cond_6

    goto :goto_4

    :cond_6
    if-ne p1, v0, :cond_7

    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    if-eq v6, v2, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    move v6, v2

    :goto_4
    if-eq v6, v2, :cond_a

    move v2, v1

    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    iget v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    if-ne v4, v6, :cond_9

    move-object p3, v3

    goto :goto_6

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-nez p3, :cond_b

    new-instance p3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    invoke-direct {p3, p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;-><init>(I)V

    :cond_b
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v2, p3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v2, v1

    goto :goto_7

    :cond_d
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v0

    :goto_7
    if-eqz v2, :cond_11

    instance-of v2, p0, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v2, :cond_f

    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/core/widgets/Guideline;

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-nez v2, :cond_e

    move v1, v0

    :cond_e
    invoke-virtual {v3, v1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->findDependents(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Ljava/util/ArrayList;)V

    :cond_f
    iget v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    if-nez p1, :cond_10

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->findDependents(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    goto :goto_8

    :cond_10
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->findDependents(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->findDependents(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    :goto_8
    invoke-virtual {v0, p1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->findDependents(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Ljava/util/ArrayList;)V

    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p0, p1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->findDependents(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Ljava/util/ArrayList;)V

    :cond_11
    return-object p3
.end method

.method public static onCreateInputConnection(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static persistLocales(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const-string v0, "locales"

    const-string v1, "AppLocalesStorageHelper"

    const-string v2, "Storing App Locales : app-locales: "

    const-string v3, "Storing App Locales : Failed to persist app-locales: "

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    if-eqz v4, :cond_0

    invoke-virtual {p0, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-void

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v4, p0, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v6, "UTF-8"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "application_locales"

    invoke-interface {v4, v5, v6, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " persisted successfully."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_0

    :catch_1
    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz p0, :cond_2

    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_2
    throw p1

    :catch_3
    const-string p0, "Storing App Locales : FileNotFoundException: Cannot open file %s for writing "

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static readLocales(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-string v0, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    const-string v1, "AppLocalesStorageHelper"

    const-string v2, ""

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    :cond_0
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v5, :cond_3

    :cond_1
    if-eq v6, v7, :cond_0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "locales"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v5, "application_locales"

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v3, :cond_4

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    :try_start_3
    const-string v4, "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_4

    goto :goto_1

    :catch_1
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    const-string p0, "Reading app Locales : Locales read from file: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file , appLocales: "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :goto_3
    return-object v2

    :goto_4
    if-eqz v3, :cond_6

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_6
    throw p0

    :catch_3
    const-string p0, "Reading app Locales : Locales record file not found: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static toCssRgba(I)Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-double v3, p0

    const-wide v5, 0x406fe00000000000L    # 255.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "rgba(%d,%d,%d,%.3f)"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static validInGroup(IIII)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p2, v0, :cond_1

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_0

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move p0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    if-eq p3, v0, :cond_3

    if-eq p3, v2, :cond_3

    if-ne p3, v1, :cond_2

    if-eq p1, v2, :cond_2

    goto :goto_2

    :cond_2
    move p1, v3

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v0

    :goto_3
    if-nez p0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v3

    :cond_5
    :goto_4
    return v0
.end method

.method public static verifyQualName(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x66

    if-lez v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/adobe/xmp/impl/Utils;->isXMLNameNS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Landroidx/work/WorkQuery;

    invoke-virtual {v0, p0}, Landroidx/work/WorkQuery;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Unknown namespace prefix for qualified name"

    invoke-direct {p0, v0, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Ill-formed qualified name"

    invoke-direct {p0, v0, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static verifySimpleXMLName(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v0, v1, :cond_1

    sget-object v4, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    aget-boolean v0, v4, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    goto :goto_5

    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v1, :cond_4

    sget-object v5, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    aget-boolean v4, v5, v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v4, v3

    goto :goto_4

    :cond_4
    :goto_3
    move v4, v2

    :goto_4
    if-nez v4, :cond_5

    :goto_5
    move v2, v3

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :goto_6
    if-eqz v2, :cond_7

    return-void

    :cond_7
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Bad XML name"

    const/16 v1, 0x66

    invoke-direct {p0, v0, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x65

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    const/16 v4, 0x66

    if-eq v2, v3, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_5

    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    sget-object v2, Lcom/adobe/xmp/XMPMetaFactory;->schema:Landroidx/work/WorkQuery;

    invoke-virtual {v2, p0}, Landroidx/work/WorkQuery;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const/16 v4, 0x3a

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-static {p1}, Landroidx/media3/ui/HtmlUtils;->verifySimpleXMLName(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/ui/HtmlUtils;->verifySimpleXMLName(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/ui/HtmlUtils;->verifySimpleXMLName(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0}, Landroidx/work/WorkQuery;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    :cond_1
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Schema namespace URI and prefix mismatch"

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Unknown schema namespace prefix"

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Unregistered schema namespace URI"

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_4
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Top level name must be simple"

    invoke-direct {p0, p1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_5
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Top level name must not be a qualifier"

    invoke-direct {p0, p1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_6
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Schema namespace URI is required"

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
