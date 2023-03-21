.class public Lcom/apk/aq0;
.super Ljava/lang/Object;
.source "SkinAppCompatViewInflater.java"

# interfaces
.implements Lcom/apk/dq0;
.implements Lcom/apk/eq0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/apk/pq0;->if()Lcom/apk/pq0;

    return-void
.end method


# virtual methods
.method public do(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)Landroid/content/Context;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v1, :cond_4

    .line 1
    move-object v2, p2

    check-cast v2, Landroid/view/ViewParent;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    const/4 v2, 0x0

    goto :goto_2

    .line 2
    :cond_1
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 3
    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    :goto_1
    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    if-eq v2, v3, :cond_0

    .line 4
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    .line 5
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_1

    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 8
    :cond_5
    invoke-static {}, Landroidx/appcompat/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v2

    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 10
    :cond_6
    sget-object p2, Lskin/support/appcompat/R$styleable;->View:[I

    invoke-virtual {p1, p3, p2, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz v1, :cond_7

    .line 11
    sget p3, Lskin/support/appcompat/R$styleable;->View_android_theme:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    goto :goto_4

    :cond_7
    const/4 p3, 0x0

    :goto_4
    if-nez p3, :cond_8

    .line 12
    sget p3, Lskin/support/appcompat/R$styleable;->View_theme:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 13
    :cond_8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p3, :cond_a

    .line 14
    instance-of p2, p1, Landroidx/appcompat/view/ContextThemeWrapper;

    if-eqz p2, :cond_9

    move-object p2, p1

    check-cast p2, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 15
    invoke-virtual {p2}, Landroidx/appcompat/view/ContextThemeWrapper;->getThemeResId()I

    move-result p2

    if-eq p2, p3, :cond_a

    .line 16
    :cond_9
    new-instance p2, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {p2, p1, p3}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p1, p2

    :cond_a
    if-eqz v2, :cond_b

    .line 17
    invoke-static {p1}, Landroidx/appcompat/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    :cond_b
    return-object p1
.end method

.method public if(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5

    const-string v0, "."

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "ScrollView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "Button"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "RadioGroup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "EditText"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "CheckBox"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "AutoCompleteTextView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "FrameLayout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "LinearLayout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "ImageView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "RadioButton"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "View"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "Spinner"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_c
    const-string v0, "RelativeLayout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_d
    const-string v0, "SeekBar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_e
    const-string v0, "ImageButton"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_f
    const-string v0, "TextView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_10
    const-string v0, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_11
    const-string v0, "CheckedTextView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_12
    const-string v0, "ProgressBar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_13
    const-string v0, "RatingBar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    :goto_2
    move-object v0, v3

    goto/16 :goto_3

    .line 3
    :pswitch_0
    new-instance v0, Lcom/apk/fs0;

    invoke-direct {v0, p1, p3}, Lcom/apk/fs0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    .line 4
    :pswitch_1
    new-instance v0, Lcom/apk/zr0;

    invoke-direct {v0, p1, p3}, Lcom/apk/zr0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    .line 5
    :pswitch_2
    new-instance v0, Lcom/apk/gs0;

    invoke-direct {v0, p1, p3}, Lcom/apk/gs0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    .line 6
    :pswitch_3
    new-instance v0, Lcom/apk/ds0;

    invoke-direct {v0, p1, p3}, Lcom/apk/ds0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    .line 7
    :pswitch_4
    new-instance v0, Lcom/apk/yr0;

    invoke-direct {v0, p1, p3}, Lcom/apk/yr0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    .line 8
    :pswitch_5
    new-instance v0, Lcom/apk/lr0;

    invoke-direct {v0, p1, p3}, Lcom/apk/lr0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    .line 9
    :pswitch_6
    new-instance v0, Lcom/apk/pr0;

    invoke-direct {v0, p1, p3}, Lcom/apk/pr0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    .line 10
    :pswitch_7
    new-instance v0, Lcom/apk/cs0;

    invoke-direct {v0, p1, p3}, Lcom/apk/cs0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    .line 11
    :pswitch_8
    new-instance v0, Lcom/apk/bs0;

    invoke-direct {v0, p1, p3}, Lcom/apk/bs0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    .line 12
    :pswitch_9
    new-instance v0, Lcom/apk/or0;

    invoke-direct {v0, p1, p3}, Lcom/apk/or0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    .line 13
    :pswitch_a
    new-instance v0, Lcom/apk/ur0;

    invoke-direct {v0, p1, p3}, Lcom/apk/ur0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    .line 14
    :pswitch_b
    new-instance v0, Lcom/apk/is0;

    invoke-direct {v0, p1, p3}, Lcom/apk/is0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    .line 15
    :pswitch_c
    new-instance v0, Lcom/apk/rr0;

    invoke-direct {v0, p1, p3}, Lcom/apk/rr0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    .line 16
    :pswitch_d
    new-instance v0, Lcom/apk/nr0;

    invoke-direct {v0, p1, p3}, Lcom/apk/nr0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    .line 17
    :pswitch_e
    new-instance v0, Lcom/apk/wr0;

    invoke-direct {v0, p1, p3}, Lcom/apk/wr0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    .line 18
    :pswitch_f
    new-instance v0, Lcom/apk/ms0;

    invoke-direct {v0, p1, p3}, Lcom/apk/ms0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    .line 19
    :pswitch_10
    new-instance v0, Lcom/apk/sr0;

    invoke-direct {v0, p1, p3}, Lcom/apk/sr0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    .line 20
    :pswitch_11
    new-instance v0, Lcom/apk/es0;

    invoke-direct {v0, p1, p3}, Lcom/apk/es0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    .line 21
    :pswitch_12
    new-instance v0, Lcom/apk/xr0;

    invoke-direct {v0, p1, p3}, Lcom/apk/xr0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    .line 22
    :pswitch_13
    new-instance v0, Lcom/apk/os0;

    invoke-direct {v0, p1, p3}, Lcom/apk/os0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_3
    if-nez v0, :cond_5

    .line 23
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v4, 0xa38d481

    if-eq v0, v4, :cond_2

    goto :goto_4

    :cond_2
    const-string v0, "androidx.appcompat.widget.Toolbar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_5

    :cond_3
    :goto_4
    const/4 v1, -0x1

    :goto_5
    if-eqz v1, :cond_4

    goto :goto_6

    .line 24
    :cond_4
    new-instance v3, Lcom/apk/ns0;

    invoke-direct {v3, p1, p3}, Lcom/apk/ns0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_6
    move-object v0, v3

    :cond_5
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_13
        -0x5924e17a -> :sswitch_12
        -0x56c015e7 -> :sswitch_11
        -0x503aa7ad -> :sswitch_10
        -0x37f7066e -> :sswitch_f
        -0x37e04bb3 -> :sswitch_e
        -0x274065a5 -> :sswitch_d
        -0x1a719aca -> :sswitch_c
        -0x1440b607 -> :sswitch_b
        0x28aec5 -> :sswitch_a
        0x2e46a6ed -> :sswitch_9
        0x431b5280 -> :sswitch_8
        0x43311acf -> :sswitch_7
        0x4e20b2d7 -> :sswitch_6
        0x5445f9ba -> :sswitch_5
        0x5f7507c3 -> :sswitch_4
        0x63577677 -> :sswitch_3
        0x75601364 -> :sswitch_2
        0x77471352 -> :sswitch_1
        0x7ac64332 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
.end method
