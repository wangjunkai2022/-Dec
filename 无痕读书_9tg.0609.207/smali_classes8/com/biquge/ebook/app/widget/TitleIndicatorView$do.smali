.class public Lcom/biquge/ebook/app/widget/TitleIndicatorView$do;
.super Ljava/lang/Object;
.source "TitleIndicatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/widget/TitleIndicatorView;->if(Lcom/apk/e40;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/TitleIndicatorView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView$do;->do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView$do;->do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    invoke-static {}, Lcom/apk/w0;->throw()I

    move-result v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->do(IZ)V

    return-void
.end method
