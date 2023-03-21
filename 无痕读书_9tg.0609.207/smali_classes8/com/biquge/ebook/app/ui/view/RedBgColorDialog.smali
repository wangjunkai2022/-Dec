.class public Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;
.super Lcom/lxj/xpopup/impl/FullScreenPopupView;
.source "RedBgColorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$for;
    }
.end annotation


# instance fields
.field public break:Lcom/biquge/ebook/app/widget/ExampleFontTextView;

.field public catch:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

.field public class:Ltop/defaults/colorpicker/ColorPickerView;

.field public const:Ljava/lang/String;

.field public final else:Landroid/app/Activity;

.field public final:Ljava/lang/String;

.field public goto:Landroid/widget/LinearLayout;

.field public this:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    const-string v0, "#FFFFFF"

    .line 2
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->const:Ljava/lang/String;

    const-string v0, "#333333"

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->final:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->else:Landroid/app/Activity;

    return-void
.end method

.method public static this(I)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "0"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    invoke-static {v4, v1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-static {v4, v2}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_2

    invoke-static {v4, p0}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c00a2

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900bc

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901af

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->class:Ltop/defaults/colorpicker/ColorPickerView;

    .line 5
    iget-object v0, p1, Ltop/defaults/colorpicker/ColorPickerView;->do:Lcom/apk/zs0;

    iget p1, p1, Ltop/defaults/colorpicker/ColorPickerView;->case:I

    invoke-virtual {v0, p1, v2}, Lcom/apk/zs0;->for(IZ)V

    .line 6
    invoke-static {}, Lcom/apk/g2;->else()Lcom/biquge/ebook/app/bean/RedBgImageBean;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getBgColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->const:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getfColor()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->final:Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->this:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->const:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 10
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->break:Lcom/biquge/ebook/app/widget/ExampleFontTextView;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->final:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/widget/ExampleFontTextView;->setFontColor(I)V

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->catch:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setCurrentItem(I)V

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->class:Ltop/defaults/colorpicker/ColorPickerView;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->const:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ltop/defaults/colorpicker/ColorPickerView;->setInitialColor(I)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901ae

    if-ne p1, v0, :cond_2

    .line 14
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->const:Ljava/lang/String;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->final:Ljava/lang/String;

    .line 15
    invoke-static {p1, v0, v2}, Lcom/apk/g2;->throws(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f09046c

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 4
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->else:Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    new-instance v1, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$for;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$for;-><init>(Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$do;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const-string v2, "type = ?"

    const-string v3, "4"

    .line 7
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v2

    const-class v4, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-virtual {v2, v4}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-static {}, Lcom/apk/g2;->new()Lcom/biquge/ebook/app/bean/RedBgImageBean;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 9
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    new-instance v4, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-direct {v4}, Lcom/biquge/ebook/app/bean/RedBgImageBean;-><init>()V

    .line 11
    invoke-virtual {v4, v3}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setType(Ljava/lang/String;)V

    const v3, 0x7f0800d8

    .line 12
    invoke-virtual {v4, v3}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setsId(I)V

    const v3, 0x7f100280

    .line 13
    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setName(Ljava/lang/String;)V

    .line 14
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 16
    :cond_1
    new-instance v2, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$do;

    invoke-direct {v2, p0, v1, v0}, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$do;-><init>(Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$for;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    const v0, 0x7f0901c5

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->goto:Landroid/widget/LinearLayout;

    const v0, 0x7f0901b1

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->this:Landroid/widget/ImageView;

    const v0, 0x7f0901b2

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ExampleFontTextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->break:Lcom/biquge/ebook/app/widget/ExampleFontTextView;

    const v0, 0x7f0901ad

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->catch:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const-string v1, "\u80cc\u666f"

    const-string v2, "\u5b57\u4f53"

    .line 21
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 22
    new-instance v2, Lcom/apk/nz;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->else:Landroid/app/Activity;

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v4}, Lcom/apk/eg;->catch(F)I

    move-result v4

    invoke-direct {v2, v3, v1, v4}, Lcom/apk/nz;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->catch:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/16 v2, 0x1e

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lcom/apk/ze;->u(Landroid/content/Context;Lcom/apk/b40;II)V

    const v0, 0x7f0901b0

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltop/defaults/colorpicker/ColorPickerView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->class:Ltop/defaults/colorpicker/ColorPickerView;

    .line 25
    invoke-static {}, Lcom/apk/g2;->new()Lcom/biquge/ebook/app/bean/RedBgImageBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getBgColor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->const:Ljava/lang/String;

    .line 27
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getfColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->final:Ljava/lang/String;

    goto :goto_0

    .line 28
    :cond_2
    invoke-static {}, Lcom/apk/g2;->else()Lcom/biquge/ebook/app/bean/RedBgImageBean;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getBgColor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->const:Ljava/lang/String;

    .line 30
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getfColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->final:Ljava/lang/String;

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->this:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->const:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 32
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->break:Lcom/biquge/ebook/app/widget/ExampleFontTextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->final:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/ExampleFontTextView;->setFontColor(I)V

    .line 33
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->class:Ltop/defaults/colorpicker/ColorPickerView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->const:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ltop/defaults/colorpicker/ColorPickerView;->setInitialColor(I)V

    .line 34
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->class:Ltop/defaults/colorpicker/ColorPickerView;

    new-instance v1, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$if;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$if;-><init>(Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;)V

    .line 35
    iget-object v2, v0, Ltop/defaults/colorpicker/ColorPickerView;->new:Lcom/apk/ts0;

    invoke-interface {v2, v1}, Lcom/apk/ts0;->if(Lcom/apk/vs0;)V

    .line 36
    iget-object v0, v0, Ltop/defaults/colorpicker/ColorPickerView;->this:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0901af

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901ae

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900bc

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
