.class public final synthetic Lcom/apk/jc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/jc;->do:Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/apk/jc;->do:Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->case(Landroid/view/View;)V

    return-void
.end method
