.class public final synthetic Lcom/apk/v00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicReadActivity;

.field public final synthetic for:I

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:I


# direct methods
.method public synthetic constructor <init>(Lcom/manhua/ui/activity/ComicReadActivity;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/v00;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    iput-object p2, p0, Lcom/apk/v00;->if:Ljava/lang/String;

    iput p3, p0, Lcom/apk/v00;->for:I

    iput p4, p0, Lcom/apk/v00;->new:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/apk/v00;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    iget-object v1, p0, Lcom/apk/v00;->if:Ljava/lang/String;

    iget v2, p0, Lcom/apk/v00;->for:I

    iget v3, p0, Lcom/apk/v00;->new:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/manhua/ui/activity/ComicReadActivity;->D(Ljava/lang/String;II)V

    return-void
.end method
