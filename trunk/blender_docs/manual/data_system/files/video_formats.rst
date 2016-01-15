
***********************
Supported Video Formats
***********************

Video Formats
=============

These formats are primarily used for compressing rendered sequences into a playable movie
(they can also be used to make plain audio files).

A codec is a little routine that compresses the video so that it will fit on a DVD,
or be able to be streamed out over the Internet, over a cable,
or just be a reasonable file size.
Codecs compress the channels of a video down to save space and enable continuous playback.
*Lossy* codecs make smaller files at the expense of image quality. Some codecs, like H.264,
are great for larger images. Codecs are used to encode and decode the movie,
and so must be present on both the encoding machine (Blender) and the target machine.
The results of the encoding are stored in a container file.

There are dozens, if not hundreds, of codecs, including XviD, H.264, DivX, Microsoft,
and so on. Each has advantages and disadvantages and compatibility with different players on
different operating systems.

Most codecs can only compress the RGB or YUV color space,
but some support the Alpha channel as well. Codecs that support RGBA include:

- animation (quicktime)
- PNG TIFF Pixlet - not loss-less, and may be only available on Mac-OSX.
- `Lagarith Loss-less Video Codec <http://lags.leetcode.net/codec.html>`__

AVI Codec
   AVI codec compression. Available codecs are operating-system dependent.
   When an AVI codec is initially chosen, the codec dialog is automatically launched.
   The codec can be changed directly using the *Set Codec* button which appears (*AVI Codec settings.*).
AVI Jpeg
   AVI but with Jpeg compression.
   Lossy, smaller files but not as small as you can get with a Codec compression algorithm.
   Jpeg compression is also the one used in the DV format used in digital camcorders.
AVI Raw
   Audio-Video Interlaced (AVI) uncompressed frames.
Frameserver
   Blender puts out `frames upon request
   <http://wiki.blender.org/index.php/Dev:Source/Render/Frameserver>`__
   as part of a render farm.
   The port number is specified in the OpenGL User Preferences panel.
H.264
   Encodes movies with the H.264 codec. See `Advanced Encoding`_.
MPEG
   Encodes movies with the MPEG codec. See `Advanced Encoding`_.
Ogg Theora
   Encodes movies with the Theora codec as Ogg files.
   See `Advanced Encoding`_.
QuickTime
   Apple's Quicktime ``.mov`` file.
   The Quicktime codec dialog is available when this codec is installed on OSX.
   See *Quicktime* in `Video Formats`_.
Xvid
   Encodes movies with the Xvid codec. See `Advanced Encoding`_.


Advanced Encoding
-----------------

.. figure:: /images/render-ffmpeg-video.jpg

If the *H.264*, *MPEG*, *Ogg Theora*,
or *Xvid* codecs are chosen, an *Encoding* panel becomes available.
This has settings for encoding these file types, and other formats using FFmpeg.

`FFmpeg <http://ffmpeg.org>`__, short for Fast Forward Moving Pictures Expert Group,
is a collection of free and open source software libraries that can record,
convert and stream digital audio and video in numerous formats.
It includes libavcodec, an audio/video codec library used by several other projects,
and libavformat, an audio/video container mux and demux library.


Video Settings
--------------

Here you choose which video codec you want to use, and compression settings.
With all of these compression choices, there is a tradeoff between file size,
compatibility across platforms, and playback quality.

When you view the :doc:`System Console </interface/window_system/console_window>`,
you can see some of the output of the encoding process.
You will see even more output if you execute Blender as ``blender -d``.

You can use the presets, DV, SVCD, DVD, etc.
which choose optimum settings for you for that type of output,
or you can manually select the format (MPEG-1, MPEG-2, MPEG-4, AVI, Quicktime (if installed),
DV, H.264, or Xvid (if installed). You must have the proper codec installed on your computer
for Blender to be able to call it and use it to compress the video stream.


Video Containers
^^^^^^^^^^^^^^^^

`MPEG-1 <http://en.wikipedia.org/wiki/MPEG-1>`__: ``.mpg``, ``.mpeg``
   A standard for lossy compression of video and audio.
   It is designed to compress VHS-quality raw digital video and CD audio down to 1.5 Mbit/s.
`MPEG-2 <http://en.wikipedia.org/wiki/MPEG-2>`__: ``.dvd``, ``.vob``, ``.mpg``, ``.mpeg``
   A standard for "the generic coding of moving pictures and associated audio information".
   It describes a combination of lossy video compression and lossy audio data compression
   methods which permit storage and transmission of movies using currently
   available storage media and transmission bandwidth.
`MPEG-4(DivX) <http://en.wikipedia.org/wiki/MPEG-4>`__: ``.mp4``, ``.mpg``, ``.mpeg``
   Absorbs many of the features of MPEG-1 and MPEG-2 and other related standards, and adds new features.
`AVI <http://en.wikipedia.org/wiki/Audio_Video_Interleave>`__: ``.avi``
   A derivative of the Resource Interchange File Format (RIFF), which divides a file's data into blocks, or "chunks."
`Quicktime <http://en.wikipedia.org/wiki/.mov>`__: ``.mov``
   A multi-tracked format. QuickTime and MP4 container formats can use the same MPEG-4 formats;
   they are mostly interchangeable in a QuickTime-only environment.
   MP4, being an international standard, has more support.
`DV <http://en.wikipedia.org/wiki/DV>`__: ``.dv``
   An intraframe video compression scheme,
   which uses the discrete cosine transform (DCT) to compress video on a frame-by-frame basis.
   Audio is stored uncompressed.
`H.264 <http://en.wikipedia.org/wiki/H.264>`__: ``.avi`` *for now*.
   A standard for video compression, and is currently one of the most commonly used formats for the recording,
   compression, and distribution of high definition video.
`Xvid <http://en.wikipedia.org/wiki/Xvid>`__: ``.avi`` *for now*
   A video codec library following the MPEG-4 standard. It uses ASP features such as b-frames,
   global and quarter pixel motion compensation, lumi masking, trellis quantization, and H.263,
   MPEG and custom quantization matrices. Xvid is a primary competitor of the DivX Pro Codec.
`Ogg <http://en.wikipedia.org/wiki/Theora>`__: ``.ogg``, ``.ogv``
   A free lossy video compression format.
   It is developed by the Xiph.Org Foundation and distributed without licensing fees.
`Matroska <http://en.wikipedia.org/wiki/Matroska>`__: ``.mkv``
   An open standard free container format, a file format that can hold an unlimited number of video,
   audio, picture or subtitle tracks in one file.
`Flash <http://en.wikipedia.org/wiki/Flash_Video>`__: ``.flv``
   A container file format used to deliver video over the Internet using Adobe Flash Player.
`Wav <http://en.wikipedia.org/wiki/Wav>`__: ``.wav``
   An uncompressed (or lightly compressed) Microsoft and IBM audio file format.
`Mp3 <http://en.wikipedia.org/wiki/MP3>`__: ``.mp3``
   A highly-compressed, patented digital audio encoding format using a form of lossy data compression.
   It is a common audio format for consumer audio storage, as well as a de facto standard of digital
   audio compression for the transfer and playback of music on digital audio players.


Video Codecs
^^^^^^^^^^^^

None
   *For audio-only encoding.*
`MPEG-1 <http://en.wikipedia.org/wiki/MPEG-1>`__
   See `Video Formats`_.
`MPEG-2 <http://en.wikipedia.org/wiki/MPEG-2>`__
   See `Video Formats`_.
`MPEG-4(DivX) <http://en.wikipedia.org/wiki/MPEG-4>`__
   See `Video Formats`_.
`HuffYUV <http://en.wikipedia.org/wiki/HuffYUV>`__
   Loss-less video codec created by Ben Rudiak-Gould which is
   meant to replace uncompressed YCbCr as a video capture format.
`DV <http://en.wikipedia.org/wiki/DV>`__
   See `Video Formats`_.
`H.264 <http://en.wikipedia.org/wiki/H.264>`__
   See `Video Formats`_.
`Xvid <http://en.wikipedia.org/wiki/Xvid>`__
   See `Video Formats`_.
`Theora <http://en.wikipedia.org/wiki/Theora>`__
   See Ogg in `Video Formats`_.
`Flash Video <http://en.wikipedia.org/wiki/Flash_Video>`__
   See `Video Formats`_.
`FFmpeg video codec #1 <http://en.wikipedia.org/wiki/FFV1>`__
   A.K.A. FFV1, a loss-less intra-frame video codec.
   It can use either variable length coding or arithmetic coding for entropy coding.
   The encoder and decoder are part of the free, open-source library libavcodec in FFmpeg.


Options
^^^^^^^

Bitrate
   Set the average `bitrate <http://en.wikipedia.org/wiki/Bit_rate>`__ (quality),
   which is the count of binary digits per frame.
   See also: `ffmpeg -b:v <http://ffmpeg.org/ffmpeg.html#Description>`__

Rate
   The bitrate control also includes a *Minimum* and a *Maximum*.

   Buffer
      The `decoder bitstream buffer <http://en.wikipedia.org/wiki/Video_buffering_verifier>`__ size.

GOP Size
   The number of pictures per `Group of Pictures <http://en.wikipedia.org/wiki/Group_of_pictures>`__.
   Set to 0 for "intra_only", which disables `inter-frame <http://en.wikipedia.org/wiki/Inter-frame>`__ video.
   From ffmpeg docs: "For streaming at very low bitrate application, use a low frame rate and a small GOP size.
   This is especially true for RealVideo where the Linux player does not seem to be very fast,
   so it can miss frames"


Autosplit Output
   If your video is HUGE and exceeds 2Gig, enable Autosplit Output.
   The main control over output filesize is the GOP, or keyframe interlace.
   A higher number generally leads to a smaller file, but needs a higher-powered device to replay it.

Mux
   `Multiplexing <http://www.afterdawn.com/glossary/term.cfm/multiplexing>`__ settings.

   Rate
      Maximum bit rate of the multiplexed stream.
   Packet Size
      (Undocumented in ffmpeg)


.. note:: Standards

   Codecs cannot encode off-the-wall video sizes, so stick to the XY sizes used in the presets for standard TV sizes.


Audio Settings
--------------

Audio is encoded using the codec you choose.

Audio Codecs

`MP2 <http://en.wikipedia.org/wiki/MPEG-1_Audio_Layer_II>`__
   A lossy audio compression format defined by ISO/IEC 11172-3.
`MP3 <http://en.wikipedia.org/wiki/MP3>`__
   See MP3 in `Video Formats`_ above.)
`AC3 <http://en.wikipedia.org/wiki/Dolby_Digital>`__
   Audio Codec 3, an audio compression technology developed by Dolby Laboratories.
`AAC <http://en.wikipedia.org/wiki/Advanced_Audio_Coding>`__
   Advanced Audio Codec," a standardized, lossy compression and encoding scheme for digital audio.

   *AAC generally achieves better sound quality than MP3 at similar bit rates.*
`Vorbis <http://en.wikipedia.org/wiki/Vorbis>`__
   An open-standard, highly-compressed format comparable to MP3 or AAC.

   *Vorbis generally achieves better sound quality than MP3 at similar bit rates.*
`FLAC <http://en.wikipedia.org/wiki/FLAC>`__
   Free Loss-less Audio Codec.
   Digital audio compressed by FLAC's algorithm can typically be reduced to 50-60% of its original size,
   and decompressed into an identical copy of the original audio data.
`PCM <http://en.wikipedia.org/wiki/PCM>`__
   Pulse Code Modulation, a method used to digitally represent sampled analog signals.
   It is the standard form for digital audio in computers and various Blu-ray,
   Compact Disc and DVD formats, as well as other uses such as digital telephone systems


Bitrate
   For each codec, you can to control the bitrate (quality) of the sound in the movie.
   This example shows MP3 encoding at 128kbps. Higher bitrates are bigger files that stream worse but sound better.
   Stick to powers of 2 for compatibility.
Samplerate
   Samplerate controls the number of samples per second of the audio.
   The default, 44100, is standard for many file types, including CD audio, and produces a high quality sound.
Volume
   Set the output volume of the audio.


Tips

----


Choosing which format to use depends on what you are going to do with the image.

If you are animating a movie and are not going to do any post-processing or special effects on
it, use either **AVI-JPEG** or **AVI Codec** and choose the XviD open codec.
If you want to output your movie with sound that you have loaded into the VSE,
use **FFMPEG**.

If you are going to do post-processing on your movie,
it is best to use a frame set rendered as **OpenEXR** images; if you only want one file,
then choose **AVI Raw**. While AVI Raw is huge,
it preserves the exact quality of output for post-processing. After post-processing
(compositing and/or sequencing), you can compress it down.
You don't want to post-process a compressed file, because the compression artifacts might
throw off what you are trying to accomplish with the post-processing.

Note that you might not want to render directly to a video format.
If a problem occurs while rendering, you have to re-render all frames from the beginning.
If you first render out a set of static images (such as the default PNG, or the higher-quality OpenEXR),
you can stitch them together with an Image Strip in the :doc:`Video Sequence Editor (VSE) </editors/sequencer/usage>`.
This way, you can easily:

- Restart the rendering from the place (the frame) where the problem occurred.
- Try out different video options in seconds, rather than minutes or hours.
- Enjoy the rest of the features of the VSE,
  such as adding Image Strips from previous renders, audio, video clips, etc.

