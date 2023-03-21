.class public Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$for;
.super Ljava/lang/Object;
.source "RedBgImageDialog.java"

# interfaces
.implements Lcom/apk/vs0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->setCotomImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/ExampleFontTextView;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;Lcom/biquge/ebook/app/widget/ExampleFontTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$for;->if:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$for;->do:Lcom/biquge/ebook/app/widget/ExampleFontTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(IZZ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$for;->do:Lcom/biquge/ebook/app/widget/ExampleFontTextView;

    invoke-virtual {p2, p1}, Lcom/biquge/ebook/app/widget/ExampleFontTextView;->setFontColor(I)V

    .line 2
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$for;->if:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->catch(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    iput-object p1, p2, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->break:Ljava/lang/String;

    return-void
.end method
