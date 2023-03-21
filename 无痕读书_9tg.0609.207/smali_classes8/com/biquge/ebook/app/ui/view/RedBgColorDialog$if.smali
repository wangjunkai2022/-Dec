.class public Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$if;
.super Ljava/lang/Object;
.source "RedBgColorDialog.java"

# interfaces
.implements Lcom/apk/vs0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$if;->do:Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(IZZ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$if;->do:Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;

    .line 2
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->catch:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 3
    invoke-virtual {p2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$if;->do:Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;

    .line 5
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->this:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 7
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$if;->do:Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->this(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    iput-object p1, p2, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->const:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$if;->do:Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;

    .line 10
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->break:Lcom/biquge/ebook/app/widget/ExampleFontTextView;

    .line 11
    invoke-virtual {p2, p1}, Lcom/biquge/ebook/app/widget/ExampleFontTextView;->setFontColor(I)V

    .line 12
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$if;->do:Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->this(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    iput-object p1, p2, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->final:Ljava/lang/String;

    :goto_0
    return-void
.end method
