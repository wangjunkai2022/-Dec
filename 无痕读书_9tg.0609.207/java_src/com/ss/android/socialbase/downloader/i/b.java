package com.ss.android.socialbase.downloader.i;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.qq.e.comm.adevent.AdEventType;
/* loaded from: classes7.dex */
public class b {
    public static String a(int i) {
        if (i != 449) {
            if (i != 451) {
                if (i != 600) {
                    if (i != 509) {
                        if (i != 510) {
                            switch (i) {
                                case 100:
                                    return "Continue";
                                case 101:
                                    return "Switching Protocols";
                                case 102:
                                    return "Processing";
                                default:
                                    switch (i) {
                                        case 200:
                                            return "OK";
                                        case AdEventType.VIDEO_CACHE /* 201 */:
                                            return "Created";
                                        case AdEventType.VIDEO_START /* 202 */:
                                            return "Accepted";
                                        case AdEventType.VIDEO_RESUME /* 203 */:
                                            return "Non-Authoritative Information";
                                        case AdEventType.VIDEO_PAUSE /* 204 */:
                                            return "No Content";
                                        case AdEventType.VIDEO_STOP /* 205 */:
                                            return "Reset Content";
                                        case AdEventType.VIDEO_COMPLETE /* 206 */:
                                            return "Partial Content";
                                        case AdEventType.VIDEO_ERROR /* 207 */:
                                            return "Multi-Status";
                                        default:
                                            switch (i) {
                                                case 300:
                                                    return "Multiple Choices";
                                                case 301:
                                                    return "Moved Permanently";
                                                case AdEventType.VIDEO_PAGE_CLOSE /* 302 */:
                                                    return "Move Temporarily";
                                                case AdEventType.LEFT_APPLICATION /* 303 */:
                                                    return "See Other";
                                                case AdEventType.COMPLAIN_SUCCESS /* 304 */:
                                                    return "Not Modified";
                                                case 305:
                                                    return "Use Proxy";
                                                case 306:
                                                    return "Switch Proxy";
                                                case 307:
                                                    return "Temporary Redirect";
                                                default:
                                                    switch (i) {
                                                        case 400:
                                                            return "Bad Request";
                                                        case 401:
                                                            return "Unauthorized";
                                                        case 402:
                                                            return "Payment Required";
                                                        case 403:
                                                            return "Forbidden";
                                                        case 404:
                                                            return "Not Found";
                                                        case 405:
                                                            return "Method Not Allowed";
                                                        case 406:
                                                            return "Not Acceptable";
                                                        case 407:
                                                            return "Proxy Authentication Required";
                                                        case TTAdConstant.INTERACTION_TYPE_CODE /* 408 */:
                                                            return "Request Timeout";
                                                        case TTAdConstant.IMAGE_LIST_CODE /* 409 */:
                                                            return "Conflict";
                                                        case TTAdConstant.IMAGE_LIST_SIZE_CODE /* 410 */:
                                                            return "Gone";
                                                        case TTAdConstant.IMAGE_CODE /* 411 */:
                                                            return "Length Required";
                                                        case TTAdConstant.IMAGE_URL_CODE /* 412 */:
                                                            return "Precondition Failed";
                                                        case TTAdConstant.VIDEO_INFO_CODE /* 413 */:
                                                            return "Request Entity Too Large";
                                                        case TTAdConstant.VIDEO_URL_CODE /* 414 */:
                                                            return "Request-URI Too Long";
                                                        case TTAdConstant.VIDEO_COVER_URL_CODE /* 415 */:
                                                            return "Unsupported Media Type";
                                                        case TTAdConstant.LIVE_AD_CODE /* 416 */:
                                                            return "Requested Range Not Satisfiable";
                                                        case TTAdConstant.LIVE_FEED_URL_CODE /* 417 */:
                                                            return "Expectation Failed";
                                                        case TTAdConstant.DEEPLINK_FALL_BACK_CODE /* 418 */:
                                                            return "I'm a teapot";
                                                        default:
                                                            switch (i) {
                                                                case 421:
                                                                    return "Too Many Connections";
                                                                case 422:
                                                                    return "Unprocessable Entity";
                                                                case 423:
                                                                    return "Locked";
                                                                case 424:
                                                                    return "Failed Dependency";
                                                                case 425:
                                                                    return "Unordered Collection";
                                                                case 426:
                                                                    return "Upgrade Required";
                                                                default:
                                                                    switch (i) {
                                                                        case 500:
                                                                            return "Internal Server Error";
                                                                        case 501:
                                                                            return "Not Implemented";
                                                                        case 502:
                                                                            return "Bad Gateway";
                                                                        case 503:
                                                                            return "Service Unavailable";
                                                                        case 504:
                                                                            return "Gateway Timeout";
                                                                        case 505:
                                                                            return "HTTP Version Not Supported";
                                                                        case 506:
                                                                            return "Variant Also Negotiates";
                                                                        case 507:
                                                                            return "Insufficient Storage";
                                                                        default:
                                                                            return "";
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                            }
                        }
                        return "Not Extended";
                    }
                    return "Bandwidth Limit Exceeded";
                }
                return "Unparseable Response Headers";
            }
            return "Unavailable For Legal Reasons";
        }
        return "Retry With";
    }
}
