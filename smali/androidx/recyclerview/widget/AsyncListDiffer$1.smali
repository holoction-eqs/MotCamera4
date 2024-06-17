.class public final Landroidx/recyclerview/widget/AsyncListDiffer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/AsyncListDiffer;

.field public final synthetic val$commitCallback:Ljava/lang/Runnable;

.field public final synthetic val$newList:Ljava/util/List;

.field public final synthetic val$oldList:Ljava/util/List;

.field public final synthetic val$runGeneration:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/AsyncListDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->this$0:Landroidx/recyclerview/widget/AsyncListDiffer;

    iput-object p2, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    iput-object p3, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    iput p4, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$runGeneration:I

    iput-object p5, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$commitCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v0, p0

    new-instance v1, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;-><init>(Landroidx/recyclerview/widget/AsyncListDiffer$1;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->getOldListSize()I

    move-result v2

    invoke-virtual {v1}, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->getNewListSize()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v6, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>(II)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    new-array v6, v2, [I

    div-int/lit8 v7, v2, 0x2

    new-array v2, v2, [I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1f

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/DiffUtil$Range;

    iget v11, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v12, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int v13, v11, v12

    if-lt v13, v3, :cond_16

    iget v15, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v14, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    sub-int/2addr v15, v14

    if-ge v15, v3, :cond_0

    goto/16 :goto_11

    :cond_0
    add-int/2addr v15, v13

    add-int/2addr v15, v3

    div-int/lit8 v15, v15, 0x2

    add-int v13, v3, v7

    aput v12, v6, v13

    aput v11, v2, v13

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v15, :cond_16

    iget v12, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v13, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int/2addr v12, v13

    iget v13, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v14, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    rem-int/lit8 v12, v12, 0x2

    if-ne v12, v3, :cond_1

    move v12, v3

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :goto_2
    iget v13, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v14, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int/2addr v13, v14

    iget v14, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v3, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    sub-int/2addr v14, v3

    sub-int/2addr v13, v14

    neg-int v3, v11

    move v14, v3

    :goto_3
    if-gt v14, v11, :cond_a

    if-eq v14, v3, :cond_4

    if-eq v14, v11, :cond_2

    add-int/lit8 v16, v14, 0x1

    add-int v16, v16, v7

    aget v10, v6, v16

    add-int/lit8 v16, v14, -0x1

    add-int v16, v16, v7

    move/from16 v17, v15

    aget v15, v6, v16

    if-le v10, v15, :cond_3

    goto :goto_4

    :cond_2
    move/from16 v17, v15

    :cond_3
    add-int/lit8 v10, v14, -0x1

    add-int/2addr v10, v7

    aget v10, v6, v10

    add-int/lit8 v15, v10, 0x1

    goto :goto_5

    :cond_4
    move/from16 v17, v15

    :goto_4
    add-int/lit8 v10, v14, 0x1

    add-int/2addr v10, v7

    aget v10, v6, v10

    move v15, v10

    :goto_5
    iget v0, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    move-object/from16 v16, v5

    iget v5, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int v5, v15, v5

    add-int/2addr v5, v0

    sub-int/2addr v5, v14

    if-eqz v11, :cond_6

    if-eq v15, v10, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v5, -0x1

    goto :goto_7

    :cond_6
    :goto_6
    move v0, v5

    :goto_7
    move-object/from16 v18, v8

    :goto_8
    iget v8, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    if-ge v15, v8, :cond_7

    iget v8, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    if-ge v5, v8, :cond_7

    invoke-virtual {v1, v15, v5}, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->areItemsTheSame(II)Z

    move-result v8

    if-eqz v8, :cond_7

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_7
    add-int v8, v14, v7

    aput v15, v6, v8

    if-eqz v12, :cond_8

    sub-int v8, v13, v14

    move/from16 v19, v12

    add-int/lit8 v12, v3, 0x1

    if-lt v8, v12, :cond_9

    add-int/lit8 v12, v11, -0x1

    if-gt v8, v12, :cond_9

    add-int/2addr v8, v7

    aget v8, v2, v8

    if-gt v8, v15, :cond_9

    new-instance v8, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v8}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    iput v10, v8, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v0, v8, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v15, v8, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v5, v8, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    const/4 v0, 0x0

    iput-boolean v0, v8, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    goto :goto_9

    :cond_8
    move/from16 v19, v12

    :cond_9
    add-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    move-object/from16 v5, v16

    move/from16 v15, v17

    move-object/from16 v8, v18

    move/from16 v12, v19

    goto/16 :goto_3

    :cond_a
    move-object/from16 v16, v5

    move-object/from16 v18, v8

    move/from16 v17, v15

    const/4 v8, 0x0

    :goto_9
    if-eqz v8, :cond_b

    move-object v14, v8

    move-object/from16 v19, v9

    goto/16 :goto_12

    :cond_b
    iget v0, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v5, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int/2addr v0, v5

    iget v5, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v8, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    sub-int/2addr v5, v8

    sub-int/2addr v0, v5

    rem-int/lit8 v5, v0, 0x2

    if-nez v5, :cond_c

    const/4 v5, 0x1

    goto :goto_a

    :cond_c
    const/4 v5, 0x0

    :goto_a
    move v8, v3

    :goto_b
    if-gt v8, v11, :cond_14

    if-eq v8, v3, :cond_e

    if-eq v8, v11, :cond_d

    add-int/lit8 v10, v8, 0x1

    add-int/2addr v10, v7

    aget v10, v2, v10

    add-int/lit8 v12, v8, -0x1

    add-int/2addr v12, v7

    aget v12, v2, v12

    if-ge v10, v12, :cond_d

    goto :goto_c

    :cond_d
    add-int/lit8 v10, v8, -0x1

    add-int/2addr v10, v7

    aget v10, v2, v10

    add-int/lit8 v12, v10, -0x1

    goto :goto_d

    :cond_e
    :goto_c
    add-int/lit8 v10, v8, 0x1

    add-int/2addr v10, v7

    aget v10, v2, v10

    move v12, v10

    :goto_d
    iget v13, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v14, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    sub-int/2addr v14, v12

    sub-int/2addr v14, v8

    sub-int/2addr v13, v14

    if-eqz v11, :cond_10

    if-eq v12, v10, :cond_f

    goto :goto_e

    :cond_f
    add-int/lit8 v14, v13, 0x1

    goto :goto_f

    :cond_10
    :goto_e
    move v14, v13

    :goto_f
    iget v15, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    if-le v12, v15, :cond_11

    iget v15, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    if-le v13, v15, :cond_11

    add-int/lit8 v15, v12, -0x1

    move-object/from16 v19, v9

    add-int/lit8 v9, v13, -0x1

    invoke-virtual {v1, v15, v9}, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->areItemsTheSame(II)Z

    move-result v20

    if-eqz v20, :cond_12

    move v13, v9

    move v12, v15

    move-object/from16 v9, v19

    goto :goto_f

    :cond_11
    move-object/from16 v19, v9

    :cond_12
    add-int v9, v8, v7

    aput v12, v2, v9

    if-eqz v5, :cond_13

    sub-int v9, v0, v8

    if-lt v9, v3, :cond_13

    if-gt v9, v11, :cond_13

    add-int/2addr v9, v7

    aget v9, v6, v9

    if-lt v9, v12, :cond_13

    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    iput v12, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v13, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v10, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v14, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    goto :goto_10

    :cond_13
    add-int/lit8 v8, v8, 0x2

    move-object/from16 v9, v19

    goto :goto_b

    :cond_14
    move-object/from16 v19, v9

    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_15

    move-object v14, v0

    goto :goto_12

    :cond_15
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v5, v16

    move/from16 v15, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_16
    :goto_11
    move-object/from16 v16, v5

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    const/4 v14, 0x0

    :goto_12
    if-eqz v14, :cond_1e

    iget v0, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iget v3, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    sub-int/2addr v0, v3

    iget v3, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iget v5, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    sub-int/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_1c

    iget v0, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iget v3, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    sub-int/2addr v0, v3

    iget v5, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iget v8, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    sub-int/2addr v5, v8

    if-eq v0, v5, :cond_17

    const/4 v9, 0x1

    goto :goto_13

    :cond_17
    const/4 v9, 0x0

    :goto_13
    if-eqz v9, :cond_1b

    iget-boolean v9, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v9, :cond_18

    new-instance v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {v9, v8, v3, v0}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    goto :goto_16

    :cond_18
    if-le v0, v5, :cond_19

    const/4 v10, 0x1

    goto :goto_14

    :cond_19
    const/4 v10, 0x0

    :goto_14
    new-instance v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    if-eqz v10, :cond_1a

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_1a
    add-int/lit8 v8, v8, 0x1

    :goto_15
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {v9, v8, v3, v0}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    goto :goto_16

    :cond_1b
    new-instance v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-direct {v9, v8, v3, v5}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    :goto_16
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    move-object/from16 v5, v18

    move-object/from16 v9, v19

    const/4 v3, 0x1

    goto :goto_17

    :cond_1d
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    move-object/from16 v5, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$Range;

    move-object/from16 v9, v19

    :goto_17
    iget v8, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput v8, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v8, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput v8, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iget v8, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v8, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v8, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v8, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    move-object/from16 v8, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iput v0, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v0, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iput v0, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v0, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v0, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v0, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iput v0, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_1e
    move-object/from16 v8, v16

    move-object/from16 v5, v18

    move-object/from16 v9, v19

    const/4 v3, 0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_18
    move-object/from16 v0, p0

    move-object/from16 v21, v8

    move-object v8, v5

    move-object/from16 v5, v21

    goto/16 :goto_0

    :cond_1f
    sget-object v0, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Landroidx/viewpager/widget/ViewPager$1;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    invoke-direct {v0, v1, v4, v6, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/AsyncListDiffer$1$1;Ljava/util/ArrayList;[I[I)V

    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/recyclerview/widget/AsyncListDiffer$1;->this$0:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v0}, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
