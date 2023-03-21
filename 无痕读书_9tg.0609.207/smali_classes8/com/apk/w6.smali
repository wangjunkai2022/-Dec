.class public final synthetic Lcom/apk/w6;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;

.field public final synthetic for:I

.field public final synthetic if:Lcom/biquge/ebook/app/bean/InitConfNews;


# direct methods
.method public synthetic constructor <init>(Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;Lcom/biquge/ebook/app/bean/InitConfNews;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/w6;->do:Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;

    iput-object p2, p0, Lcom/apk/w6;->if:Lcom/biquge/ebook/app/bean/InitConfNews;

    iput p3, p0, Lcom/apk/w6;->for:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/apk/w6;->do:Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;

    iget-object v1, p0, Lcom/apk/w6;->if:Lcom/biquge/ebook/app/bean/InitConfNews;

    iget v2, p0, Lcom/apk/w6;->for:I

    invoke-virtual {v0, v1, v2}, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->i(Lcom/biquge/ebook/app/bean/InitConfNews;I)V

    return-void
.end method
